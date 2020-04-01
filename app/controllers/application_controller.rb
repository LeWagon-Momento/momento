class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :after_sign_in_path_for # login metric, to force it to go after_sign_in_path method
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo, :email, :password, :country, :country_id])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_in_path_for
   userlogin_metric = Userlogin.new(user_id: current_user.id, remote_ip: request.remote_ip, start_date: Date.today, end_date: Date.today)
   userlogin_metric.save # we are saving it here is it because every time it does line 14 we want to capture that data?
  end
end
