class AddCharacterTypeIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :character_id, :integer
  end
end
