class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :birth_date, :integer
    add_column :users, :about_me, :string
    add_column :users, :state, :string
    add_column :users, :city_town, :string
    add_column :users, :country, :string
  end
end
