module ApplicationHelper
  def app_name
    "Gudaru"
  end

  def twitter_bird_image(options = {})
    image_tag("twitter-bird-light-bgs.png", options.merge(size: "26x26"))
  end
end
