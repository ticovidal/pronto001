class HomeController < ApplicationController
  def index
  	if current_user.status == "provider"
  		redirect_to dashboard_provider_path
  	elsif current_user.status == "industry"
  		redirect_to dashboard_industry_path
  	end
  end
end
