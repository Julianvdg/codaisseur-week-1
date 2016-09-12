require "./waiter"
require "./menu"
require "./kitchen"

menu = Menu.new
kitchen = Kitchen.new
waiter = Waiter.new(menu, kitchen)


waiter.greet_guest

while(waiter.still_serving) do
    waiter.serve_guest
    waiter.order_food(gets.chomp.to_i)
end


