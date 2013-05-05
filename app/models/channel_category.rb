class ChannelCategory < ActiveRecord::Base
  # attr_accessible :category_name, :description
  has_many :channel_infos

  # attr_accessible :channel_name
  validates_presence_of :category_name
  validates_uniqueness_of :category_name
end
