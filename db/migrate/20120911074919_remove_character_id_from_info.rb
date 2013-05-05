class RemoveCharacterIdFromInfo < ActiveRecord::Migration
  def up
    remove_column :infos, :character_id
      end

  def down
    add_column :infos, :character_id, :integer
  end
end
