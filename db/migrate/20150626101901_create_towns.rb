class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.integer :sqft
      t.integer :rooms
      t.integer :buit_year
      t.integer :cost
      t.string :address

      t.timestamps null: false
    end
  end
end
