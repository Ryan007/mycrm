class AddSignedUserIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :signed_user_id, :integer
  end
end
