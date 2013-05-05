class AddIsMeToRecord < ActiveRecord::Migration
  def change
    add_column :records, :is_me, :integer
  end
end
