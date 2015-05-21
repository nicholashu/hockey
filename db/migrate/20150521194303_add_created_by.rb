class AddCreatedBy < ActiveRecord::Migration
  def change
  	  	add_column :listings, :created_by, :intiger

  end
end
