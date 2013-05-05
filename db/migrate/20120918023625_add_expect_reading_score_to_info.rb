class AddExpectReadingScoreToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :expect_reading_score, :integer
  end
end
