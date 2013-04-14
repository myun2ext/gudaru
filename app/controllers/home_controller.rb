class HomeController < ApplicationController
  def index
  end

  def twitter_profile_image
    screen_name = params[:screen_name]
    twitter_profile_image = TwitterProfileImage.new
    image_data = twitter_profile_image.read screen_name

    send_data(image_data, :disposition => "inline", :type => "image/png")
  end
end
