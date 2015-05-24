class AddGroup < ActiveRecord::Migration
  def change
  	add_column :listings, :group, :integer
  end
end
