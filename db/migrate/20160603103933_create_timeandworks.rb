class CreateTimeandworks < ActiveRecord::Migration
  def change
    create_table :timeandworks do |t|
      t.text :question
      t.text :solution
      t.string :optionA
      t.string :optionB
      t.string :optionC
      t.string :opdtionD
      t.text :answer

      t.timestamps null: false
    end
  end
end