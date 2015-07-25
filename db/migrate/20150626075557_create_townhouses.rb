class CreateTownhouses < ActiveRecord::Migration
  def change
    create_table :townhouses do |t|
      t.string :name
      t.integer :sqft
      t.integer :rooms
      t.integer :built_year
      t.integer :cost
      t.string :address
      t.string :image

      t.timestamps null: false
    end
  end
end
