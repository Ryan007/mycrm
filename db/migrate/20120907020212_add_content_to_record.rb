class AddContentToRecord < ActiveRecord::Migration
  def change
    add_column :records, :content, :string
  end
end
