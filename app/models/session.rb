class Session < ActiveRecord::Base
  # attr_accessible :info_id, :session_time, :session_type_id, :user_id
  belongs_to :info
  belongs_to :session_type
  has_many :records
  belongs_to :user
end
