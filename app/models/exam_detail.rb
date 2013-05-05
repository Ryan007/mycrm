class ExamDetail < ActiveRecord::Base
  # attr_accessible :exam_id, :listening, :oral, :reading, :writing
  belongs_to :exam
end
