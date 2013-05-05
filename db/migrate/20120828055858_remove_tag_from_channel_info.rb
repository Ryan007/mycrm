class RemoveTagFromChannelInfo < ActiveRecord::Migration
  def up
    remove_column :channel_infos, :tag
      end

  def down
    add_column :channel_infos, :tag, :string
  end
end
