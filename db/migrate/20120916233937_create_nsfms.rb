class CreateNsfms < ActiveRecord::Migration
  def change
    create_table :nsfms do |t|
      t.integer :user_id
      t.integer :stu_id
      t.datetime :date_application
      t.integer :status
      t.string :name
      t.integer :age
      t.string :school
      t.string :grade
      t.integer :goal_score
      t.string :learn_days
      t.integer :fee
      t.text :previous_marks_exams
      t.integer :study_days
      t.integer :application_fee
      t.datetime :forcast_1st_date
      t.integer :forcast_1st_fee
      t.datetime :actual_1st_date
      t.datetime :atual_1st_date
      t.datetime :forcast_2nd_date
      t.integer :forcast_2nd_fee
      t.datetime :actual_2nd_date
      t.integer :actual_2nd_fee

      t.timestamps
    end
  end
end
