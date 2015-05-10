class ListingCreatorandTaker < ActiveRecord::Migration
  def change
  	  	remove_column :listings, :user_id

  	 add_column :listings, :created_by, :intiger
  	 add_column :listings, :taken_by, :intiger
  end
end
