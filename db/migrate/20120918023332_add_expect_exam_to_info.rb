class AddExpectExamToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :expect_exam, :integer
  end
end
