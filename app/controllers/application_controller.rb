class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def log_in(user)
    session[:user_id]=user.id
  end
  def log_out
    session.delete(:user_id)
    @current_user=nil
  end
end
