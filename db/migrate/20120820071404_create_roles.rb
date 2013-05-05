class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :rolename, :null => false, :default => ""
      t.string :roledesc, :default => ""
      t.timestamps
    end
    add_index :roles, :rolename,                :unique => true
  end
end
