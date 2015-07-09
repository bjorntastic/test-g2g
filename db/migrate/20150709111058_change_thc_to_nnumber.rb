class ChangeThcToNnumber < ActiveRecord::Migration
  def change
  	remove_column :weeds, :thc 
  	add_column :weeds, :thc, :integer
  	remove_column :weeds, :price
  	add_column :weeds, :price, :integer
  end
end
