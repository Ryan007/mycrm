class AddExpectOralScoreToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :expect_oral_score, :integer
  end
end
