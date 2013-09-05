class AddCompanyIdToEmployer < ActiveRecord::Migration
  def change
  	add_column :employers, :company_id, :integer
  end
end
