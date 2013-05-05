class AddSignedTimeToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :signed_time, :datetime
  end
end
