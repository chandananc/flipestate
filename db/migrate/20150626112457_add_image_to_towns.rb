class AddImageToTowns < ActiveRecord::Migration
  def change
    add_column :towns, :image, :string
  end
end
