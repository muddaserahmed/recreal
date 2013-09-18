class CreateSalaryRanges < ActiveRecord::Migration
  def change
    create_table :salary_ranges do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
