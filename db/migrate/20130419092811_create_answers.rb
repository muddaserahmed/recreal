class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id, :null => false
      t.string :title, :null => false
      t.integer :weight, :null => false, :default => 0

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :weight
  end
end
