class AddIsSignedToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :is_signed, :integer
  end
end
