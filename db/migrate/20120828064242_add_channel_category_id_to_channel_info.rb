class AddChannelCategoryIdToChannelInfo < ActiveRecord::Migration
  def change
    add_column :channel_infos, :channel_category_id, :integer
  end
end
