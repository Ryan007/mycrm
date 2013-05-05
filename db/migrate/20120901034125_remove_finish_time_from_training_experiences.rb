class RemoveFinishTimeFromTrainingExperiences < ActiveRecord::Migration
  def up
    remove_column :training_experiences, :finish_time
      end

  def down
    add_column :training_experiences, :finish_time, :integer
  end
end
