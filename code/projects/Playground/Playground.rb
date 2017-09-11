#Version: 1.0

#Multiply Method
def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f
end

#Divide Method
def divide(first_number, second_number)
    first_number.to_f / second_number.to_f
end

#Divide Method
def divide(first_number, second_number)
    first_number.to_f / second_number.to_f
end


puts "Enter first number"
a = gets.chomp

puts "Enter second number"
b = gets.chomp

puts "What do you want to do? 1)multiply 2)divide"
c = gets.chomp

if c == "1"
    result = multiply(a,b)
elsif c == "2"
    result = divide(a,b)
else
    puts "Not a valid option"
end


puts result

