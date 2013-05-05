class Info < ActiveRecord::Base
  # attr_accessible :age, :apply_colleage_id, :cellphone, :character_type_id, :city, 
  # :core_question, :core_question_answer, :current_school, :decision_power, :district, :expect_colleage_ranking, 
  # :expect_major, :expect_score, :father_name, :father_phone, :grade, :is_examed, :is_trained, :mother_name, :mother_phone, 
  # :name, :province, :user_id
  validates_presence_of :name, :cellphone
  validates_uniqueness_of :cellphone
  
  belongs_to :character_type
  belongs_to :apply_colleage
  belongs_to :user
  has_many :sessions, :dependent => :destroy
  has_many :training_experiences, :dependent => :destroy
  has_many :exams, :dependent => :destroy
  has_many :invations, :dependent => :destroy
  belongs_to :channel_info

  has_many :info_notes, :dependent => :destroy

end
