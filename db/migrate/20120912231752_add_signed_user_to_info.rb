class AddSignedUserToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :signed_user, :integer
  end
end
