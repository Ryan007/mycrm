class RemoveAtual1stDateFromNsfm < ActiveRecord::Migration
  def up
    remove_column :nsfms, :atual_1st_date
      end

  def down
    add_column :nsfms, :atual_1st_date, :datetime
  end
end
