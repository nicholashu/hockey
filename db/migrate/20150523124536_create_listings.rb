class CreateListings < ActiveRecord::Migration
  def change
  	
    create_table :listings do |t|
      t.string :venue
      t.date :gamedate
      t.time :gametime
      t.integer :created_by
    	t.integer  :taken_by
      t.timestamps
    end
    add_reference :listings, :user
  end
  
end