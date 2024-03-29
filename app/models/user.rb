class User < ActiveRecord::Base
  attr_accessible :name, :screen_name, :twitter_user_id

  # Validations
  validates :name, :presence => true, :length => { :minimum => 4, :maximum => 25 }
  validates :screen_name, :presence => true, :length => { :minimum => 4, :maximum => 20 }
end
