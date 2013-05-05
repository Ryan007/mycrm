class Record < ActiveRecord::Base
  # attr_accessible :answer, :quesion, :session_id
  belongs_to :session
end
