class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # confirm a logged_in user
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "please log in your account to view the edit page"
      redirect_to login_url
    end
  end

end

