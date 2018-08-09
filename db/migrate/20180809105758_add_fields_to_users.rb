class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description, :text
    add_column :users, :location, :string
    add_column :users, :category, :string, array: true, default: []
    add_column :users, :wishlist, :string, array: true, default: []
    add_column :users, :languages, :string, array: true, default: []
    add_column :users, :birthday, :date
  end
end
