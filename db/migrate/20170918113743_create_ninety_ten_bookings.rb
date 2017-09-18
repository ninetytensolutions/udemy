class CreateNinetyTenBookings < ActiveRecord::Migration
  def change
    create_table :ninety_ten_bookings do |t|
      t.date :date
      t.time :time
      t.text :firstName
      t.text :lastName
      t.text :phoneNumber
      t.integer :noOfGuests
      t.text :comments
      t.string :status
      t.string :username

      t.timestamps null: false
    end
  end
end
