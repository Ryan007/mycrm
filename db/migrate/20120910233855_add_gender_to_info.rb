class AddGenderToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :gender, :integer
  end
end
