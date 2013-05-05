class AddActualComeDateToOscf < ActiveRecord::Migration
  def change
    add_column :oscfs, :actual_come_date, :datetime
  end
end
