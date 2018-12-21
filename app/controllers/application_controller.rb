class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	# Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :reload_one

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
		def reload_one
			if user_signed_in?
				if current_user.profile
					if current_user.profile.adress
							if current_user.status == "industry"
								unless current_user.profile.profileable_id or request.path == new_industry_path or request.path == industries_path or request.path == destroy_user_session_path
							      redirect_to new_industry_path
							    end
							elsif current_user.status == "provider"
						        unless current_user.profile.profileable_id or request.path == new_provider_path or request.path == providers_path or request.path == destroy_user_session_path
							      redirect_to new_provider_path
							    end
							end
					else
						unless request.path == new_adress_path or request.path == adresses_path or request.path == destroy_user_session_path
						    redirect_to new_adress_path
						end
					end
				else
					unless request.path == new_profile_path or request.path == profiles_path or request.path == destroy_user_session_path
						redirect_to new_profile_path
					end
				end
			end  
		end
end
