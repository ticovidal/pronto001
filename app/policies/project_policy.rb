class ProjectPolicy < ApplicationPolicy
  def index?
  	user.superuser? or user.industry?
  end
  def new?
  	user.superuser? or user.industry?
  end
  def show?
  	user.superuser? or user.industry?
  end
  def edit?
  	user.superuser? or user.industry?
  end	
  class Scope < Scope
    def resolve
      scope
    end
  end
end
