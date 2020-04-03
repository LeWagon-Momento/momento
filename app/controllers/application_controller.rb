class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :after_sign_in_path_for # tracking of login metric, to force it to go to after_sign_in_path method on line 14
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :email, :password, :city, :city_id])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_in_path_for
   userlogin_metric = Userlogin.new(user_id: current_user.id, remote_ip: request.remote_ip, start_date: Date.today, end_date: Date.today) # we are tying each user to a userlogin instance
   userlogin_metric.save
  end
end
