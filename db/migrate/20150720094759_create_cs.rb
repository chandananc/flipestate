class CreateCs < ActiveRecord::Migration
  def change
    create_table :cs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
