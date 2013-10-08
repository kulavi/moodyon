class ApplicationController < ActionController::Base
  protect_from_forgery

  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  private
  
  def is_admin?
    redirect_to root_path if !current_user.has_role? :admin
  end

end
