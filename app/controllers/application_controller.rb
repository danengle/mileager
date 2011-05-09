class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def get_default_vehicle
    @vehicle ||= current_user.default_vehicle
  end
end
