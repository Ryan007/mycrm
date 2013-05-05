class AddCcIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :cc_id, :integer
  end
end
