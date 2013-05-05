class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :session_id
      t.string :quesion
      t.text :answer

      t.timestamps
    end
  end
end
