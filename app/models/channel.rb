class Channel < ActiveRecord::Base
  belongs_to :parent, :class_name => "Channel"
  belongs_to :owner, :class_name => "User"

  attr_accessible :short_name, :name

  validates :owner, :presence => true
  validates :short_name, :uniqueness => true
end
