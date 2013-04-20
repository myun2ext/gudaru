class Channel < ActiveRecord::Base
  belongs_to :parent, :class_name => "Channel"
  attr_accessible :name
end
