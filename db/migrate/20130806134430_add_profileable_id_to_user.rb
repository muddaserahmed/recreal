class AddProfileableIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :profileable_id, :integer
  end
end
