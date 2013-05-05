class ApplyColleage < ActiveRecord::Base
  # attr_accessible :colleage_name, :description, :ranking, :score
  # 一个学校可以被多个客户申请
  has_many :infos
end
