class AdoptionsController < ApplicationController
  before_action :find_pet, only: [:new, :create]
  before_action :find_adoption, only: [:show, :adoption_user, :destroy]

  def index
    @adoptions = policy_scope(Adoption).where(user: current_user)
  end

  def show
    authorize @adoption
  end

  def my_adoptions
    @adoptions = policy_scope(Adoption).where(user: current_user)
  end

  def adoption_user
    @user = @adoption.user
  end

  def new
    @adoption = Adoption.new
    authorize @adoption
  end

  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.pet = @pet
    @adoption.user = current_user
    @owner = @pet.user
    authorize @adoption
    if @adoption.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def destroy
    @adoption.destroy
    authorize @adoption
    redirect_to adoptions_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:pet_id])
  end

  def find_adoption
    @adoption = Adoption.find(params[:id])
  end

  def adoption_params
    params.require(:adoption).permit(:adoption_message)
  end
end
