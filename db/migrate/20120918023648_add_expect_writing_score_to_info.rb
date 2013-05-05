class AddExpectWritingScoreToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :expect_writing_score, :integer
  end
end
