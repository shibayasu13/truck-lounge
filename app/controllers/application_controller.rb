class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_guests_path
    else
    guest_path(current_guest.id)
  end
  end


	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:car,:email])
	end

  def after_sign_out_path_for(resource)
    root_path
  end
end
