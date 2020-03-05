class ApplicationController < ActionController::Base
	before_action :authenticate_guest!

  def after_sign_in_path_for(resource)
    guest_path(current_guest.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
