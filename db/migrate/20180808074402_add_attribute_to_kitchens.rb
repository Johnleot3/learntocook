class AddAttributeToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :description, :text
  end
end
