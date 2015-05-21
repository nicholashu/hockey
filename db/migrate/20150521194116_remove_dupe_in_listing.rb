class RemoveDupeInListing < ActiveRecord::Migration
  def change
  	remove_column :listings, :created_at
  	remove_column :listings, :created_by
  end
end
