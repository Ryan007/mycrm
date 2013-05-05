class AddActualComeTimeToOscfs < ActiveRecord::Migration
  def change
    add_column :oscfs, :actual_come_time, :datetime
  end
end
