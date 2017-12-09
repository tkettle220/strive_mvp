class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end
  
  def login!(user)
    session[:id] = user.id
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  
end
