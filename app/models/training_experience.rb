class TrainingExperience < ActiveRecord::Base
  # attr_accessible :exam_type, :finish_time, :info_id, :start_time, :total_time, :user_id
  belongs_to :info
  belongs_to :user
  belongs_to :exam_type

  # 添加标签的功能
  acts_as_taggable
  # 培训机构用标签显示
  acts_as_taggable_on :training_institutions
end
