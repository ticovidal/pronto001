class ProfilePolicy < ApplicationPolicy
  def index?
  	user.superuser?
  end
  def new?
  	if user.profile
  	  user.superuser?
    else
       user.superuser? or user.industry? or user.provider?
    end
  end
  class Scope < Scope
    def resolve
      scope
    end
  end
end
