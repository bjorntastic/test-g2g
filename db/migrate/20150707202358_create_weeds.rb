class CreateWeeds < ActiveRecord::Migration
  def change
    create_table :weeds do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :mood
      t.float :price
      t.float :weight

      t.timestamps null: false
    end
  end
end
