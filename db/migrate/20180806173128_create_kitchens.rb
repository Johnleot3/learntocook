class CreateKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchens do |t|
      # t.string :name
      # t.references :user, foreign_key: true
      # t.integer :capacity
      # t.string :location
      t.timestamps
    end
  end
end
