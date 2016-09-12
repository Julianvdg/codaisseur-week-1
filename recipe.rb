### METHODS ###

def print_divider
    puts "*" * 40
    puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def sift_ingredients
    puts "Sifting ingredients"
    print_progress_bar
end

def pour_ingredients
    puts "Pouring ingredients into bowl"
    print_progress_bar
end

def mix_ingredients
    puts "Mixing ingredients"
    print_progress_bar
end

def brown_pancake
    puts "Baking the pancake, they are starting to look sooo good!"
    print_progress_bar
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}? (Y,N)\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

### VARIABLES ###

ingredients = [
    { name: "Flour", quantity: "1/2 Cup"},
    { name: "Baking Powder", quantity: "1/2 Tablespoon"},
    { name: "Salt", quantity: "1 Teaspoon"},
    { name: "White Sugar", quantity: "1 Tablespoon" },
    { name: "Milk", quantity: "1/4 Cups"},
    { name: "Egg", quantity: 1},
    { name: "Butter", quantity: "3 Tablespoons"}
    ]


steps = [
  { description: "Sift together the flour, baking powder, salt and sugar in a large bowl.", action: "sift_ingredients" },
  { description: "Make a well in the center and pour in the milk, egg and melted butter.", action: "pour_ingredients" },
  { description: "Mix ingredients until smooth.", action: "mix_ingredients" },
  { description: "Heat a lightly oiled griddle or frying pan over medium high heat.", action: "generic_recipe_step" },
  { description: "Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.", action: "generic_recipe_step" },
  { description: "Brown on both sides and serve hot.", action: "brown_pancake" }
]

### PROGRAM ### 

puts "* Let's cook Pancakes! *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
    puts "#{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
    puts "Do you have all to ingredients? (Y/N)"
    answer = gets.chomp.capitalize
    if answer == "Y"
        puts "Great let's start cooking!"
        break
    elsif answer == "N"
        puts "Please go and get the ingredients."
        break
    else 
        puts "Invalid answer, please try again."
    end
end

print_divider

puts "See below the different steps to follow:"

steps.each_with_index do |step,index|
    puts (index + 1).to_s + ") #{step[:description]}"
end

steps.each_with_index do |step, index|
  puts "\n"

  loop do
    ready = ask_if_ready(step, index)
    break if ready
      
    puts "\n"
    puts "OK, I will give you some extra time."
    print_progress_bar
    puts "\n"
  end

    puts "\n"
  send(step[:action])    
end

puts "Enjoy your pancakes!"











