class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id)
  	@projectsall = Project.where(industry_id:current_user.profile.profileable_id).count
  	@projectsend1 = Project.where(visibility:false).count
  	@projectsend2 = Project.where(visibility:true).count
  	@projectsend3 = Project.first
  end

  def provider
  end
end
