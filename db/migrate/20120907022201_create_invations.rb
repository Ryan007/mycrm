class CreateInvations < ActiveRecord::Migration
  def change
    create_table :invations do |t|
      t.integer :info_id
      t.integer :user_id
      t.datetime :invit_time
      t.datetime :come_time
      t.integer :status

      t.timestamps
    end
  end
end
