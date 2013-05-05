# encoding: utf-8
class ChannelInfo < ActiveRecord::Base
  # attr_accessible :channel_categories_id, :tag, :user_id
  validates_presence_of :name
  validates_uniqueness_of :name
  # 添加标签的功能
  acts_as_taggable
  # 标签
  acts_as_taggable_on :marketing


  belongs_to :user
  belongs_to :channel_category
  has_many :infos
end
