class Listings < ActiveRecord::Migration
  def change
  	add_column :listings, :confirmed, :boolean, :default => false
  	add_column :listings, :gps, :string
  end
end
