class Exam < ActiveRecord::Base
  # attr_accessible :exam_time, :exam_type_id, :info_id, :total_score
  has_many :exam_details, :dependent => :destroy
  belongs_to :info
  belongs_to :exam_type

end
