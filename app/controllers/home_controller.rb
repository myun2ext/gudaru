class HomeController < ApplicationController
  include TwitterProfileImageAction

  def index
  end

  def logged_in
    redirect_to '/'
  end
end
