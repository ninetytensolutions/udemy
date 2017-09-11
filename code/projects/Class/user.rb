module Destructable
    def destroy(anyobject)
    puts "I will destroy the object"
    end
end

class User
    
    include Destructable
    
    attr_accessor :name, :email
    
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "Hey, I'm running"
    end

    def self.idself
        puts "Hey im a class method"
    end

end

class Buyer < User
    def run
        puts "Buyer running"
    end
end

class Seller < User
end

class Admin < User
end


user = User.new("andrew","pereira.andrew@gmail.com")

puts user.name
puts user.email
puts user.name = "James"
puts user.email = "James@gmail.com"
puts user.name
puts user.email


buyer1 = Buyer.new("John Doe", "John@gmail.com")
seller1 = Seller.new("John Doe 1", "John1@gmail.com")
admin1 = Admin.new("John Doe 2", "John2@gmail.com")

buyer1.run
seller1.run
admin1.run


User.idself




user19 = User.new("mike","mike@gmail.com")

user19.destroy("myname")