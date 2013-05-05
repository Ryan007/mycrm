class ExamType < ActiveRecord::Base
  # attr_accessible :description, :name
  has_many :training_experiences
  has_many :exams
end
