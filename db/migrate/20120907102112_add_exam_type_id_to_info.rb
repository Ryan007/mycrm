class AddExamTypeIdToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :exam_type_id, :integer
  end
end
