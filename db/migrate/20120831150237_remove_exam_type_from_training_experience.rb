class RemoveExamTypeFromTrainingExperience < ActiveRecord::Migration
  def up
    remove_column :training_experiences, :exam_type
      end

  def down
    add_column :training_experiences, :exam_type, :integer
  end
end
