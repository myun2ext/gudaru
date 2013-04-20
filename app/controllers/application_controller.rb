class ApplicationController < ActionController::Base
  protect_from_forgery

  include Twitter::Login::Helpers

  before_filter :twitter_login, if: :logged_in?
  before_filter :set_locale  

  #==========

  def logged_in?
    !!session[:twitter_user]
  end

  def logged_in
    session[:twitter_user]
  end

  helper_method :logged_in?

  def logout
    twitter_logout
    redirect_to root_url
  end

  #==========

  private
  def twitter_login
    @twitter_user = twitter_user
  end

  def set_locale  
    I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].split(",").first
    puts "locale=#{I18n.locale}"
  end  
end
