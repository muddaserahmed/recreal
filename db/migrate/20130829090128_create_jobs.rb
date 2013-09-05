class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :title
      t.string :location
      t.date :posted_date
      t.date :last_date
      t.date :start_date
      t.integer :industry_id
      t.integer :employee_type_id
      t.boolean :travel_required
      t.integer :salary_range
      t.integer :currency_id
      t.integer :division_id
      t.integer :department_id
      t.text :job_description
      t.text :job_requirements

      t.timestamps
    end
  end
end
