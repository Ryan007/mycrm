class AddAdmissionScoreToInfo < ActiveRecord::Migration
  def change
    add_column :infos, :admission_score, :integer
  end
end
