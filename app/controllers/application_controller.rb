class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  helper_method :admin?
  
  rescue_from CanCan::AccessDenied, :with => :access_denied
  
  def admin?
    current_user && current_user.admin?
  end
  
  def check_for_admin
    access_denied unless admin?
  end
  
  def access_denied
    flash[:error] = 'That action is not allowed.'
    redirect_to root_url
  end
end
