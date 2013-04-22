class ApplicationController
  module TwSession
    extend ActiveSupport::Concern
    include Twitter::Login::Helpers

    included do
      before_filter :twitter_login, if: :logged_in?
      helper_method :logged_in?
    end

    module InstanceMethods
      def logged_in?
        !!session[:twitter_user]
      end

      def tw_account
        session[:twitter_user]
      end
 
      def user
        #session[:user] = User.find_by_screen_name tw_account["screen_name"]
        session[:user] = User.find_by_twitter_user_id tw_account["id"]
      end
      def tw_first?
        !!user
      end
      def logged_in
        session[:user]
      end
 
      def logout
        twitter_logout
        redirect_to root_url
      end
 
      private
      def twitter_login
        @twitter_user = twitter_user
      end
    end
  end
end
