class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
    	t.integer :candidate_id
    	t.integer :job_id
    	t.integer :score
    	t.boolean :interested_employer
    	t.boolean :taken_exam
      t.timestamps
    end
    add_index :job_applications, [:candidate_id, :job_id]
  end
end
