class Nsfm < ActiveRecord::Base
	belongs_to :user
  # attr_accessible :actual_1st_date, :actual_2nd_date, :actual_2nd_fee, :age, :application_fee, :atual_1st_date, :date_application, :fee, :forcast_1st_date, :forcast_1st_fee, :forcast_2nd_date, :forcast_2nd_fee, :goal_score, :grade, :learn_days, :name, :previous_marks_exams, :school, :status, :stu_id, :study_days, :user_id
end
