class AddConfirmUserIdToInvation < ActiveRecord::Migration
  def change
    add_column :invations, :confirm_user_id, :integer
  end
end
