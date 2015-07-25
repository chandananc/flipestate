class CreateTownAttachments < ActiveRecord::Migration
  def change
    create_table :town_attachments do |t|
      t.integer :town_id
      t.string :image

      t.timestamps null: false
    end
  end
end
