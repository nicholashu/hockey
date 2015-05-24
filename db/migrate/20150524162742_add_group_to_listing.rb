class AddGroupToListing < ActiveRecord::Migration
  def change
  	    add_column :Listings, :group, :string
  end
end
