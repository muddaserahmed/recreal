class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :available_in
      t.string :contact_no
      t.string :name
      t.string :salary_expectation
      t.string :skype_name

      t.timestamps
    end
  end
end
