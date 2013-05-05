class AddNotValidateReasionToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :not_validate_reasion, :text
  end
end
