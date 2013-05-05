class CreateApplyColleages < ActiveRecord::Migration
  def change
    create_table :apply_colleages do |t|
      t.string :colleage_name
      t.integer :ranking
      t.integer :score
      t.text :description

      t.timestamps
    end
  end
end
