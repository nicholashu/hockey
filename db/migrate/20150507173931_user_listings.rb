class UserListings < ActiveRecord::Migration
  def change
    add_reference :listings, :user
  end
end
