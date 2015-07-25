class CreateRealestates < ActiveRecord::Migration
  def change
    create_table :realestates do |t|

      t.timestamps null: false
    end
  end
end
