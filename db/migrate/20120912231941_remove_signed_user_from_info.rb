class RemoveSignedUserFromInfo < ActiveRecord::Migration
  def up
    remove_column :infos, :signed_user
      end

  def down
    add_column :infos, :signed_user, :integer
  end
end
