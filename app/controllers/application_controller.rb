class ApplicationController < ActionController::Base
  protect_from_forgery
  include Twitter::Login::Helpers
  before_filter :twitter_login, if: :logged_in?

  def logged_in?
    !!session[:twitter_user]
  end

  helper_method :logged_in?

  def logout
    twitter_logout
    redirect_to root_url
  end

  private
  def twitter_login
    @twitter_user = twitter_user
  end
end
