#class NinetyTenBooking < ActiveRecord::Base
    
#    validates :date, presence: true
#    validates :time, presence: true
#    validates :firstName, presence: true
#    validates :lastName, presence: true
#    validates :phoneNumber, presence: true
#    validates :noOfGuests, presence: true
#    validates :username, presence: true


class NinetyTenBooking < SalesforceModel
  self.table_name = 'ninetytenbookings.booking__c'
end