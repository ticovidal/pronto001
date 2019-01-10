class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id)
  	@projectsall = Project.where(industry_id:current_user.profile.profileable_id).count
  	@projectsend1 = Project.where(industry_id:current_user.profile.profileable_id).where(visibility:false).count
  	@projectsend2 = Project.where(industry_id:current_user.profile.profileable_id).where(visibility:true).count
  	@projectsend3 = Project.where(industry_id:current_user.profile.profileable_id).first
  end

  def provider
  end
end
