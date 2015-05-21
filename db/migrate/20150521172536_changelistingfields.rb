class Changelistingfields < ActiveRecord::Migration
  def change
  	remove_column :listings, :title
  	remove_column :listings, :description
  	remove_column :listings, :price
  	add_column :listings, :venue, :string
  	add_column :listings, :gamedate, :date
  	add_column :listings, :gametime, :time
  end
end
