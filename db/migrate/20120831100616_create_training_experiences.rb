class CreateTrainingExperiences < ActiveRecord::Migration
  def change
    create_table :training_experiences do |t|
      t.integer :user_id
      t.integer :info_id
      t.integer :exam_type
      t.datetime :start_time
      t.integer :finish_time
      t.string :total_time

      t.timestamps
    end
  end
end
