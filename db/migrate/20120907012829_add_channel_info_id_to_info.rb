class AddChannelInfoIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :channel_info_id, :integer
  end
end
