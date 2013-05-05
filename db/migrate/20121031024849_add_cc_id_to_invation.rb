class AddCcIdToInvation < ActiveRecord::Migration
  def change
    add_column :invations, :cc_id, :integer
  end
end
