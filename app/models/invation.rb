class Invation < ActiveRecord::Base
  # attr_accessible :come_time, :info_id, :invit_time, :status, :user_id
  belongs_to :user
  belongs_to :info
end