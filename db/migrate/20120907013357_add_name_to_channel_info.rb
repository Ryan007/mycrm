class AddNameToChannelInfo < ActiveRecord::Migration
  def change
    add_column :channel_infos, :name, :string
  end
end
