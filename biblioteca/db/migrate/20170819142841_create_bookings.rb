class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.date :reserved_to

      t.timestamps
    end
  end
end
