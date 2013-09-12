class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :group
      t.string :name
      t.integer :linkedin_code

      t.timestamps
    end
  end
end
