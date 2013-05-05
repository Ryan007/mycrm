class AddInfoIdToInfoNote < ActiveRecord::Migration
  def change
    add_column :info_notes, :info_id, :integer
  end
end
