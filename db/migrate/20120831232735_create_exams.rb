class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :exam_type_id
      t.integer :info_id
      t.datetime :exam_time
      t.integer :total_score

      t.timestamps
    end
  end
end
