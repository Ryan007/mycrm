class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :session_type_id
      t.integer :user_id
      t.integer :info_id
      t.datetime :session_time

      t.timestamps
    end
  end
end
