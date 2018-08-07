class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|

      t.timestamps
    end
  end
end


      # t.references :user, foreign_key: true
      # t.references :kitchen, foreign_key: true
      # t.date :date
