#1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value

#2. Display the city names to the user which are available in the dictionary

#3. Get input from the user on the city name (hint: use gets.chomp method)

#4. Display area code based on user's city choice

#5. Loop - keep the program running and prompt the user for new city names to lookup

#6. Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code

#7. Method to display just city names

dial_book = {
    "nsw" => "02",
    "vic" => "02",
    "sa" => "08",
    "nt" => "08",
    "qld" => "07",
    "regional" => "04"
}
    
def displayDialBook(hash)
    hash.each {|k,v| puts k}
end

def printAreaCode(hash, key)
    hash[key]
end


loop do
    puts "Do you want to lookup a area code for a state? (Y or N)"
    answer = gets.chomp
    
    if answer != "Y"
        puts "Thank you. Good bye."
        break
    end
    
    puts "Here are the list of states in the dictionary"
    displayDialBook(dial_book)
    
    puts "Please enter the state"
    
    state = gets.chomp
    
    if dial_book.include?(state)
        puts "The area code for the state is #{printAreaCode(dial_book, state)}"
    else
        puts "Invalid state, please try again"
    end
end