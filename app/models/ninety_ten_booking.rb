class NinetyTenBooking < ActiveRecord::Base
    
    validates :date, presence: true
    validates :time, presence: true
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :phoneNumber, presence: true { with: /((\w+\s?-?\w+)(,|\z))/i, message: "Please enter in a mobile number"
    validates :noOfGuests, presence: true
    validates :username, presence: true

end
