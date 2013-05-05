class AddCallIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :call_id, :integer
  end
end
