class CreateExamDetails < ActiveRecord::Migration
  def change
    create_table :exam_details do |t|
      t.integer :exam_id
      t.integer :listening
      t.integer :reading
      t.integer :writing
      t.integer :oral

      t.timestamps
    end
  end
end
