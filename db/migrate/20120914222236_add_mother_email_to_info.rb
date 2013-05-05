class AddMotherEmailToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :mother_email, :string
  end
end
