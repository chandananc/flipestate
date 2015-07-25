class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.float :sqft
      t.integer :rooms
      t.integer :built_year
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
