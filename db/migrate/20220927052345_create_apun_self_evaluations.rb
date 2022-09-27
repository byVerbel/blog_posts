class CreateApunSelfEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :apun_self_evaluations do |t|
      t.string :answer1, null: false
      t.string :answer2, null: false
      t.string :answer3, null: false
      t.string :answer4, null: false
      t.string :answer5, null: false
      t.string :answer6, null: false
      t.string :answer7, null: false
      t.string :answer8, null: false
      t.string :answer9, null: false
      t.string :answer10, null: false
      t.string :answer11, null: false
      t.string :answer12, null: false
      t.string :answer13, null: false
      t.string :answer14, null: false
      t.references :blog, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
