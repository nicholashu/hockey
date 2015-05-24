class AddGroupToListing < ActiveRecord::Migration
  def change
  	    add_column :listings, :group, :string
  end
end
