class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
