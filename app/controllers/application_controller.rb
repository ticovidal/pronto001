class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	# Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:status, :email, :password])
        end

     	def user_not_authorized
		    flash[:alert] = "Ação não permitida"
		    redirect_to(request.referrer || root_path)
  		end

		def after_sign_in_path_for(resource)
			if current_user.profile
			    if current_user.status == 'industry'
			      dashboard_industry_path
			    elsif current_user.status == 'provider'
			      dashboard_provider_path
			    end
			else
				new_profile_path
			end  
		end
		
end
