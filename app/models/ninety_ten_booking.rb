class NinetyTenBooking < SalesforceModel

    self.table_name =  'booking__c'

    validates :date, presence: true
    validates :time, presence: true
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :phoneNumber, presence: true
    validates :noOfGuests, presence: true
    validates :username, presence: true

end
