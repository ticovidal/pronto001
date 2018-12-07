class ProviderPolicy < ApplicationPolicy
  def index?
  	user.superuser? or user.provider?
  end
  def new?
  	user.superuser? or user.provider?
  end
  def show?
  	user.superuser? or user.provider?
  end
  def edit?
  	user.superuser? or user.provider?
  end	
  class Scope < Scope
    def resolve
      scope
    end
  end
end
