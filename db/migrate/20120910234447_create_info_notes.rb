class CreateInfoNotes < ActiveRecord::Migration
  def change
    create_table :info_notes do |t|
      t.integer :cc_id
      t.text :content

      t.timestamps
    end
  end
end
