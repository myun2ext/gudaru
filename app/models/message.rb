class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel
  attr_accessible :body

  # Validations
  validates :user,    :presence => true
  validates :channel, :presence => true

  validates :body, :presence => true, :length => { :maximum => 256 }
end
