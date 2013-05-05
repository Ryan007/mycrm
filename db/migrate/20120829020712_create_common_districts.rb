class CreateCommonDistricts < ActiveRecord::Migration
  def change
    create_table :common_districts do |t|
      t.string :name
      t.integer :level
      t.integer :usetype
      t.integer :upid
      t.integer :displayorder

      t.timestamps
    end
  end
end
