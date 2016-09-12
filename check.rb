class Check

    def initialize
        @items = []
    end

    def add(item)
        @items << item
    end

    def calculate_check
        puts "Your check"
        puts "-" * 20

        sum = 0

        @items.each do |item|
            p "#{item.name} € #{item.price}"
            sum += item.price
        end
        puts "-" * 20
        puts "Total price: € #{sum}"
        puts "-" * 20
    end

end
