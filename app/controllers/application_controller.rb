class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login

  helper_method :current_user

  def require_login
    redirect_to log_in_path unless session[:user_id]
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
