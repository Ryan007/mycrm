class CreateChannelInfos < ActiveRecord::Migration
  def change
    create_table :channel_infos do |t|
      t.integer :user_id
      t.integer :channel_categories_id
      t.string :tag

      t.timestamps
    end
  end
end
