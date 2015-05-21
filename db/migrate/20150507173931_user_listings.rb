class UserListings < ActiveRecord::Migration
  def change
  create_table :users
     add_column :users, :admin, :boolean, :default => false
     add_column :users, :rating, :intiger
     add_column :users, :name, :string
  end
end
