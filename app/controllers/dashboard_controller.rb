class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id).count
  	@projectsall = @projects.count
  	@projectsend = @projects.where(visibility:true).count
  end

  def provider
  end
end
