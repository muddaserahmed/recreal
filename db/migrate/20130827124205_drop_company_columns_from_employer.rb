class DropCompanyColumnsFromEmployer < ActiveRecord::Migration
  def up
  	remove_column :employers, :company_name
  	remove_column :employers, :website
  end

  def down
  end
end
