class CharacterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    user.present?
  end

  def create?
    user.present?
  end

  def destroy?
    user.present?
  end
  
  def search?
    true
  end
end
