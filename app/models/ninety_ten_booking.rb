#class NinetyTenBooking < ActiveRecord::Base
    
#    validates :date, presence: true
#    validates :time, presence: true
#    validates :firstName, presence: true
#    validates :lastName, presence: true
#    validates :phoneNumber, presence: true
#    validates :noOfGuests, presence: true
#    validates :username, presence: true
# app/models/salesforce/customer.rb
class Salesforce::Customer < Base
  # this will attempt to connect to salesforce_customers table in the Heroku Connect database
  # modify the expected table name if required
  self.table_name = 'ninetytenbookings.booking__c'

  # ActiveRecord scopes, validations and associations
  # any other methods, overrides from base class etc ...
end

end