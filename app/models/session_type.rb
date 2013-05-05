class SessionType < ActiveRecord::Base
  # attr_accessible :description, :name
  has_many :sessions
end
