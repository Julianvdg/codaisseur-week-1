=begin


### Hashes - Exercises ###

# Exercise 1

friends = [ 
        {name: "Thomas", occupation: "Facility Manager", city: "Tilburg"},
        {name: "Anouk", occupation: "Secretary", city: "Roosendaal"},
        {name: "William", occupation: "Entertainer", city: "Eindhoven"}
    ]

friends.each do |friend|
    puts "#{friend[:name]} lives in #{friend[:city]} and works as #{friend[:occupation]}."
end

# Exercise 2

friends.each do |friend|
    friend.each_key do
        |key| puts key
    end
    friend.each_value do
        |value| puts value
    end
end

friends.each do |friend|
    friend.each do |key, value|
        puts "#{key} and #{value}"
    end
end

# Exercise 3

family = {  
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}



### Lab 3 - Guess the number game ###

number = rand(100)
i = 0
puts "Welcome to the number game, guess a number between 0-100 in 10 tries."
loop do
    puts "Make a guess?"
    i +=1
    if i == 10
        puts "Game over!! You tried 10 times!"
        break
    end
    guess = gets.chomp.to_i
    if number > guess 
        puts "Higher!"
        next
    elsif number < guess
        puts "Lower!"
        next
    else number == guess
        puts "You win!!"
        break
    end
end



### Arrays - Exercises ###

# Exercise 1 

fruits = ["Apples", "Oranges", "Pears", "Apricots"]

fruits.each do |fruit|
    puts "I love #{fruit}."
end

# Exercise 2 

numbers = []

(1..5).each do |i|
  puts "Adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  numbers << (i)
end

numbers.each { |number| puts "Number was: #{number}"}

# Exercise 3: each_with_index

pizzas = ["Margherita", "Salami", "Funghi", "Americana"]

pizzas.each_with_index {|pizza,i| puts "#{pizza} #{i}"}


### Simple Loop - Exercises ###

# Exercise 1 & 2

loop do
    counter += 2
    if counter == 4
       next 
    end
    puts "#{counter}"
    if counter == 10
        break
    end
end

# Exercise 3

loop do
    puts "Got all ingredients you need? (Y or N)"
    answer = gets.chomp.capitalize
    if answer == "Y"
        puts "Great! Let's start cooking!"
        break
    elsif answer == "N"
        puts "Let's go shopping!"
    else
        puts "Invalid answer, try again!"
    end
end


### While Loop - Exercises ###

# Exercise 1

counter = 0
while counter < 6
    counter += 1
    puts "Break egg #{counter}"
end

# Exercise 2

puts "Enter number from which you wish the countdown to start with:"
number = gets.chomp.to_i
while number > 0
    number -= 1
    puts"#{number}"
end


### For Loops - Exercises ###

# Exercise 1

for counter in 1..6
    puts "Break egg #{counter}"
end

# Exercise 2

puts "Enter number from which you wish the countdown to start with:"
number = gets.chomp.to_i

for i in number.downto(0)
    puts i
end

=end

