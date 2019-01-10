class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id).count
  end

  def provider
  end
end
