class CreateNssrs < ActiveRecord::Migration
  def change
    create_table :nssrs do |t|
      t.integer :user_id
      t.integer :stu_id
      t.datetime :consult_date
      t.string :name
      t.integer :age
      t.string :school
      t.string :grade
      t.integer :score_goal
      t.datetime :exam_date
      t.integer :study_days
      t.integer :fee
      t.text :privious_marks_dates
      t.text :no_signup_reason
      t.integer :forcast_rec_1st_fee
      t.datetime :actual_rec_1st_date
      t.integer :actual_rec_1st_fee
      t.integer :actual_rec_1st_fee
      t.datetime :forcast_rec_2nd_date
      t.integer :forcast_rec_2nd_fee
      t.datetime :actual_re_2nd_date
      t.integer :actual_rec_2nd_fee

      t.timestamps
    end
  end
end
