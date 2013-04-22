class ApplicationController < ActionController::Base
  protect_from_forgery

  include TwSession
  include AutoLocale
end
