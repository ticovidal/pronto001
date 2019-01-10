class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id)
  	@projectsall = Project.where(industry_id:current_user.profile.profileable_id).count
  	@projectsend = @projects.where(visibility:false).count
  end

  def provider
  end
end
