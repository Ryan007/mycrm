class AddFatherEmailToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :father_email, :string
  end
end
