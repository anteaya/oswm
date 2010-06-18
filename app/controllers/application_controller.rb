class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = 'That action is not allowed.'
    redirect_to root_url
  end
  
  def admin?
    current_user.admin?
  end
end
