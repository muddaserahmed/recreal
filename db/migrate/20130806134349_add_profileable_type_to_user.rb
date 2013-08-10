class AddProfileableTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :profileable_type, :string
  end
end
