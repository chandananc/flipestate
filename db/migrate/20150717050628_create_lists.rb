class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.float :sqft
      t.integer :rooms
      t.integer :built_year
      t.decimal :cost
      t.string :address

      t.timestamps null: false
    end
  end
end
