class Nssr < ActiveRecord::Base
	belongs_to :user
  # attr_accessible :actual_re_2nd_date, :actual_rec_1st_date, :actual_rec_1st_fee, :actual_rec_1st_fee, :actual_rec_2nd_fee, :age, :consult_date, :exam_date, :fee, :forcast_rec_1st_fee, :forcast_rec_2nd_date, :forcast_rec_2nd_fee, :grade, :name, :no_signup_reason, :privious_marks_dates, :school, :score_goal, :stu_id, :study_days, :user_id
end
