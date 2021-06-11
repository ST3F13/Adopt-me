class PetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def pet_owner?
    true
  end

  def my_pets?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end
end
