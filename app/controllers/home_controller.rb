class HomeController < ApplicationController
  include TwitterProfileImageAction

  def logged_in
    redirect_to '/'
  end
end
