class AddAdminToUsers < ActiveRecord::Migration
  def change
  	create_table :users
    add_column :users, :admin, :boolean, :default => false
  end
end
