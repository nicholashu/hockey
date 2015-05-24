class CreateGroupTable < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :groupname
    end
  end
end
