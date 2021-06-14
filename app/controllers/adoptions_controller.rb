class AdoptionsController < ApplicationController
  before_action :find_pet, only: [:new, :create]
  before_action :find_adoption, only: [:show, :adoption_user, :destroy]

  def index
    @adoptions = Adoption.all
    authorize @adoptions
  end

  def show
    authorize @adoption
  end

  def my_adoptions
    @adoptions = Adoption.where(user: current_user)
    authorize @adoptions
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
      flash[:success_confirmation] = "Votre demande d'adoption pour #{@adoption.pet.name} a été crée avec succès!"
      redirect_to pet_path(@pet)
    else
      flash[:warning_confirmation] = "Votre demande d'adoption pour #{@adoption.pet.name} a échouée!"
      render :new
    end
  end

  def destroy
    @adoption.destroy
    authorize @adoption
    flash[:infos_confirmation] = "L'annonce d'adoption pour #{@adoption.pet.name} a été supprimée!"
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
