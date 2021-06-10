class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :pet_owner]
  before_action :find_pet, only: [:show, :pet_owner, :edit, :update]

  def index
    @pets = policy_scope(Pet)
    
    @city = params[:City] if params[:City].present?
    @kms = params[:Range] if params[:Range].present?
    
    params[:Type].present? ? @category = params[:Type] : @category = nil
    params[:Size].present? ? @size = params[:Size] : @size = nil
    params[:Hair].present? ? @hair = params[:Hair] : @hair = nil
    params[:Personality].present? ? @personality = params[:Personality] : @personality = nil
    params[:Gender].present? ? @gender = params[:Gender] : @gender = nil
    params[:Age].present? ? @age = params[:Age] : @age = nil


    if !@city.nil? && !@kms.nil?
      @pets = @pets.near(@city, @kms)
    end

      @pets = @pets.where(category: @category) unless @category.nil?
      @pets = @pets.where(size: @size) unless @size.nil?
      @pets = @pets.where(hair: @hair) unless @hair.nil?
      @pets = @pets.where(personality: @personality) unless @personality.nil?
      @pets = @pets.where(gender: @gender) unless @gender.nil?
      @pets = @pets.where(age: @age) unless @age.nil?
   

    #if params[:Type].present? && params[:City].present? && params[:Range].present?
     # @city = params[:City]
      #@category = params[:Type]
      #@kms = params[:Range]
      #@pets = @pets.near(@city, @kms).select{ |pet| pet.category == @category }
    #elsif params[:Type].present?
     # @pets = Pet.where(category: params[:Type])
    #elsif params[:City].present?
     # @city = params[:City]
      #@kms = params[:Range]
      #@pets = Pet.near(@city, @kms)
    #end

    # @markers = @pets.geocoded.map do |pet|
    #   {
    #     lat: pet.latitude,
    #     lng: pet.longitude,
    #     info_window: render_to_string(
    #       partial: "info_window",
    #       locals: { pet: pet }
    #     ),
    #   #  image_url: helpers.asset_url('marker-snail-classic.jpg')
    #   }
    # end
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
    authorize @pet
    if @pet.update(pet_params)
      redirect_to @pet
    else
      render :show
    end
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:category, :name, :age,
                                :description, :race,
                                :address, :hair, :personality,
                                :gender, :child_compatibility,
                                :garden_need, :sterilized,
                                :puced, :tattooed, :vaccination, :adopted,
                                photos: [])
  end
end
