class NinetyTenBooking < SalesforceModel


  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.booking__c'

  has_many :contacts, :primary_key => "sfid", :foreign_key => "HerokuID"

  attr_protected :CreatedDate, :SystemModstamp, :LastModifiedDate

    validates :date, presence: true
    validates :time, presence: true
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :phoneNumber, presence: true
    validates :noOfGuests, presence: true
    validates :username, presence: true

end
