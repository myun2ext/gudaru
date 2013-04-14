module TwitterHelper
  def twitter_bird_image(options = {})
    image_tag("twitter-bird-light-bgs.png", options.merge(size: "26x26"))
  end

  def twitter_profile_image(screen_name, options = {size: :normal})
    image_tag("/twitter_profile_image/#{screen_name}?size=#{options[:size]}")
  end
end
