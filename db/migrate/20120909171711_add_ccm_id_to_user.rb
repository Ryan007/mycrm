class AddCcmIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :ccm_id, :integer
  end
end
