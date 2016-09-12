### Grocery list Program ###

grocery_list = []

def print_divider
    puts "-" * 30
end


def add_item
    puts "What is the item called?"
    item_name = gets.chomp
    
    puts "How many do you need?"
    item_amount = gets.chomp.to_i
    
    hash = { "name" => item_name, "amount" => item_amount }
end

def show_list(list_name, grocery_list)
    puts "Here's your list:"
    puts "List: #{list_name}"
    grocery_list.each do |item|
        puts "Item: #{item["name"]} Amount: #{item["amount"]}"
    end
end


puts "Welcome to the grocery list creator!"
puts "How do you want to call your list?"
list_name = gets.chomp
puts "Great! Let's add some items to your list!"

grocery_list.push(add_item)
grocery_list.push(add_item)
grocery_list.push(add_item)
print_divider
show_list(list_name, grocery_list)
print_divider



