class AddRoleIdToInvation < ActiveRecord::Migration
  def change
    add_column :invations, :role_id, :integer
  end
end
