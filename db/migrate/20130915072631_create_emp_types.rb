class CreateEmpTypes < ActiveRecord::Migration
  def change
    create_table :emp_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
