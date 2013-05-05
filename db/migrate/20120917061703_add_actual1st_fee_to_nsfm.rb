class AddActual1stFeeToNsfm < ActiveRecord::Migration
  def change
    add_column :nsfms, :actual_1st_fee, :integer
  end
end
