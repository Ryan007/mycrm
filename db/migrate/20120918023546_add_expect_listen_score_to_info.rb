class AddExpectListenScoreToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :expect_listening_score, :integer
  end
end
