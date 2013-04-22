class ApplicationController
  module AutoLocale
    extend ActiveSupport::Concern

    included do
      before_filter :set_locale  
    end

    module InstanceMethods
      private
      def set_locale  
        I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].split(",").first
        puts "locale=#{I18n.locale}"
      end
    end
  end
end
