class AdminController < ApplicationController

  before_filter :check_for_admin
  
  def index
  end

end
