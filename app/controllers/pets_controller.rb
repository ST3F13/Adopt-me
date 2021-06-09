class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :pet_owner, :edit, :update]

  def index
    if params[:Type].present? && params[:City].present? && params[:Range].present?
      @city = params[:City]
      @category = params[:Type]
      @kms = params[:Range]
      @pets = Pet.near(@city, @kms).select{ |pet| pet.category == @category }
    else
      @pets = Pet.all
    end
    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window: render_to_string(
          partial: "info_window",
          locals: { pet: pet }
        ),
      #  image_url: helpers.asset_url('marker-snail-classic.jpg')
      }
    end
  end

  def show
    @adoption = Adoption.new
    @markers = [{
      lat: @pet.latitude,
      lng: @pet.longitude,
      info_window: render_to_string(
        partial: "info_window",
        locals: { pet: @pet }
      ),
    #  image_url: helpers.asset_url('marker-snail-classic.jpg')
    }]
  end

  def pet_owner
    @user = @pet.user
  end

  def my_pets
    @pets = Pet.where(user: current_user)
    @adoptions = []
    @pets.each do |pet|
      unless pet.adoptions.nil?
        @adoptions << pet.adoptions
      end
    end
    authorize @pets
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet
    else
      render :show
    end
  end

  private

  def find_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:price_per_day, :capacity, :shell_type,
                                  :start_available_time, :end_available_time,
                                  :location_address, :description, :offer_title,
                                  photos: [])
  end
end
