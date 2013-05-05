class AddSourceToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :source, :integer
  end
end
