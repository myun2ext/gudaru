#
# Twitter Profile Image Library (auto Cache)
#
# API Document Reference:
#   https://dev.twitter.com/docs/api/1/get/users/profile_image/%3Ascreen_name
#
require 'open-uri'
class TwitterProfileImage
  def self.image_save_path params
    #"tmp/twitter_prifle_image/#{params[:size]}/#{params[:screen_name]}"
    "tmp/twitter_profile_image/#{params[:size]}/#{params[:screen_name]}.#{params[:format]}"
  end

  def self.url params
    #"http://api.twitter.com/1/users/profile_image/#{params[:screen_name]}?size=#{params[:size]}"
    "http://api.twitter.com/1/users/profile_image/#{params[:screen_name]}.#{params[:format]}?size=#{params[:size]}"
  end

  #
  # load to file by screen_name
  #
  # size:
  #   :bigger - 73px by 73px
  #   :normal - 48px by 48px
  #   :mini - 24px by 24px
  #   :original - undefined. This will be the size the image was originally uploaded in.
  #               The filesize of original images can be very big so use this parameter with caution.
  #
  def load(screen_name, size=:normal, format=:png)
    local_path = TwitterProfileImage.image_save_path(screen_name: screen_name, size: size, format: format)

    unless File.exists?(local_path)
      File.open(local_path, 'w+b') do |output|
        url = TwitterProfileImage.url(screen_name: screen_name, size: size, format: format)
        open(url, :allow_redirections => :safe) do |input|
          output << input.read
        end
      end
    end
  end

  def read(screen_name, size=:normal, format=:png)
    local_path = TwitterProfileImage.image_save_path(screen_name: screen_name, size: size, format: format)

    unless File.exists?(local_path)
      load(screen_name, size, format)
    end

    File.open(local_path, 'r+b') do |reader|
      reader.read
    end
  end
end
