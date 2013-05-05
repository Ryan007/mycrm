class AddChannelCategoryIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :channel_category_id, :integer
  end
end
