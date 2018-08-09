class AddLanguagePriceToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :languages, :string, array: true, default: []
    add_column :kitchens, :price, :integer
  end
end
