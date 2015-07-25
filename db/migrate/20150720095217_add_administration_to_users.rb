class AddAdministrationToUsers < ActiveRecord::Migration
  def change
     add_column :users, :administration, :boolean, default: false
  end
end
