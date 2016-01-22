class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Common
  before_action :set_currentparams

  def set_currentparams
    @currentDate  = currentDate
    @currentMonth = currentMonth
  end

end