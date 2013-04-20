class Message < ActiveRecord::Base
  set_primary_keys :channel_id, :id

  belongs_to :user
  belongs_to :channel
  belongs_to :parent, :class_name => "Message"
  attr_accessible :user, :channel, :body

  # Validations
  validates :user,    :presence => true
  validates :channel, :presence => true

  validates :body, :presence => true, :length => { :maximum => 256 }
end
