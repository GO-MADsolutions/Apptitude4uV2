class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.text :question
      t.text :solution
      t.string :optionA
      t.string :optionB
      t.string :optionC
      t.string :optionD
      t.text :answer

      t.timestamps null: false
    end
  end
end
