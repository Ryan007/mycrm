class RemoveChannelCategoriesIdFromChannelInfo < ActiveRecord::Migration
  def up
    remove_column :channel_infos, :channel_categories_id
      end

  def down
    add_column :channel_infos, :channel_categories_id, :integer
  end
end
