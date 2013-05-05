class CreateCharacterTypes < ActiveRecord::Migration
  def change
    create_table :character_types do |t|
      t.string :character_name
      t.text :description

      t.timestamps
    end
  end
end
