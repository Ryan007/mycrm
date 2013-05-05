class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :name
      t.integer :age
      t.string :cellphone
      t.string :grade
      t.string :current_school
      t.string :decision_power
      t.string :father_name
      t.string :mother_name
      t.string :father_phone
      t.string :mother_phone
      t.string :core_question
      t.text :core_question_answer
      t.integer :province
      t.integer :city
      t.integer :district
      t.integer :expect_score
      t.string :expect_major
      t.integer :is_examed
      t.integer :is_trained
      t.string :expect_colleage_ranking
      t.integer :apply_colleage_id
      t.integer :user_id
      t.integer :character_type_id

      t.timestamps
    end
  end
end
