class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rating, :intiger
  end
end
