class AddEmailToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :email, :string
  end
end
