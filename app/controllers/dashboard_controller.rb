class DashboardController < ApplicationController
  def industry
  	@projects = Project.where(industry_id:current_user.profile.profileable_id)
  	@projectsall = Project.where(industry_id:current_user.profile.profileable_id).count
  	@projectsend1 = Project.where(industry_id:current_user.profile.profileable_id).where(visibility:false).count
  	@projectsend2 = Project.where(industry_id:current_user.profile.profileable_id).where(visibility:true).count
  	@projectsend3 = Project.where(industry_id:current_user.profile.profileable_id).first

  		
  end

  def provider
  	 @projects = Project.joins(:proposes).where(:proposes => {propose_id:current_user.profile.profileable_id})
  	 @projects = Project.joins(:proposes).where('proposes.provider_id in (?)', current_user.profile.profileable_id)
  	@projectsall = Project.where(proposes:current_user.profile.profileable_id).count
  	@projectsend1 = Project.where(proposes:current_user.profile.profileable_id).where(visibility:false).count
  	@projectsend2 = Project.where(proposes:current_user.profile.profileable_id).where(visibility:true).count
  	@projectsend3 = Project.where(proposes:current_user.profile.profileable_id).first
    @proposes = Propose.where(provider_id: current_user.profile.profileable_id)
    @acceptedproposes = Propose.where(provider_id: current_user.profile.profileable_id).where(provider_id: "approved")
  end
end
