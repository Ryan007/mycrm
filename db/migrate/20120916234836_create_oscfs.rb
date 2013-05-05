class CreateOscfs < ActiveRecord::Migration
  def change
    create_table :oscfs do |t|
      t.integer :user_id
      t.integer :stu_id
      t.string :name
      t.integer :gender
      t.string :school
      t.integer :goal_score
      t.text :previous_marks_exams
      t.string :learn_subject
      t.string :learn_time
      t.text :learn_remark_pm
      t.string :learn_remark_tearcher
      t.integer :post_class_score
      t.integer :mock_score
      t.datetime :comm_date
      t.text :comm_content
      t.string :comm_effect
      t.datetime :forcast_come_time
      t.integer :forcast_fee
      t.integer :actual_fee

      t.timestamps
    end
  end
end
