class CreateListAttachments < ActiveRecord::Migration
  def change
    create_table :list_attachments do |t|
      t.integer :list_id
      t.string :image

      t.timestamps null: false
    end
  end
end
