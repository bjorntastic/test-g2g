class AddPicturePathToWeedModel < ActiveRecord::Migration
  def change
  	add_column :weeds, :image, :string
  end
end
