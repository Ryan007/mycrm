class AddFinishTimeToTrainingExperiences < ActiveRecord::Migration
  def change
    add_column :training_experiences, :finish_time, :datetime
  end
end
