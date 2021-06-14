class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :find_pets_adopted, only: [:home]

  def home
  end

  private

  def find_pets_adopted
    @pets = Pet.all
    @pets_adopted = (@pets.reverse.select { |pet| pet.adopted? }).first(3)
  end
end
