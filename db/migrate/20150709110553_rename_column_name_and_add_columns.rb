class RenameColumnNameAndAddColumns < ActiveRecord::Migration
  def change
  	rename_column :weeds, :type, :thc
  	add_column :weeds, :strength, :string
  	add_column :weeds, :ingredients, :text
  	add_column :weeds, :allergies, :text
  	remove_column :weeds, :weight
  end
end
