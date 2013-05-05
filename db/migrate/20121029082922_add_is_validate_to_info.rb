class AddIsValidateToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :is_validate, :integer
  end
end
