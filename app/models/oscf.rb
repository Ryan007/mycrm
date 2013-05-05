class Oscf < ActiveRecord::Base
	belongs_to :user
  # attr_accessible :actual_fee, :comm_content, :comm_date, :comm_effect, :forcast_come_time, :forcast_fee, :gender, :goal_score, :learn_remark_pm, :learn_remark_tearcher, :learn_subject, :learn_time, :mock_score, :name, :post_class_score, :previous_marks_exams, :school, :stu_id, :user_id
end
