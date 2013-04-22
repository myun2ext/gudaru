class HomeController < ApplicationController
  include TwitterProfileImageAction

  def logged_in
    if tw_first?
      redirect_to new_user_url
    else
      redirect_to root_url
    end
  end
end
