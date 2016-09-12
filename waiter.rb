require "./check"

class Waiter

    def initialize(menu, kitchen)
        @menu = menu
        @kitchen = kitchen
        @check = Check.new
        @serving = true
    end

    def greet_guest
        puts "Good day. Welcome to our lovely restaurant."
    end


    # run method take_order and pass user input as the order_number argument
    def serve_guest
        puts "How can I be of service?"
        puts "1. Would you like to order a pizza?"
        puts "2. Would you like to leave?"
        take_order(gets.chomp.to_i)
    end

    def take_order(order_number)
        case order_number
            when 1
                puts "Let me get the menu"
                list_menu
            when 2
                @check.calculate_check
                puts "Thank you for you visit"
                @serving = false
            else
                puts "I really don't understand"
        end
    end

    def list_menu
        @menu.contents.each_with_index do |dish, index|
            puts "#{index}. #{dish.name} \t € #{dish.price}"
        end
    end

    def order_food(choice)
            dish = @menu.contents[choice]
        if @kitchen.order(dish)
            @check.add(dish)
            puts "Dish is on its way"
        else
            puts "Sorry this dish is not available"
        end
    end

    def still_serving
        @serving
    end
end
