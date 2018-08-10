class AddKitchenPicToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :kitchen_pic, :string
  end
end
