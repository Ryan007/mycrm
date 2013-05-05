class AddExamTypeIdToTrainingExperience < ActiveRecord::Migration
  def change
    add_column :training_experiences, :exam_type_id, :integer
  end
end
