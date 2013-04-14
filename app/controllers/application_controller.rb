class ApplicationController < ActionController::Base
  protect_from_forgery
  include Twitter::Login::Helpers

  def logged_in?
    !!session[:twitter_user]
  end

  helper_method :logged_in?

  def logout
    twitter_logout
    redirect_to root_url
  end
end
