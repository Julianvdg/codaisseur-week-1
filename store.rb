@shopping_cart = []

@products = [
  { reference_number: 1001, name: "Macbook Air", price: 999 },
  { reference_number: 1002, name: "Macbook Pro 13-inch", price: 1449 },
  { reference_number: 1003, name: "Macbook Pro 15-inch", price: 2249 },
  { reference_number: 1004, name: "Ipad pro", price: 919 },
  { reference_number: 1005, name: "Ipad Air 2", price: 439 },
  { reference_number: 1006, name: "Iphone 6", price: 639 },
  { reference_number: 1007, name: "Iphone 6s", price: 749 },
  { reference_number: 1008, name: "Apple Watch", price: 369}
]

def show_products
    puts "Welcome to the Apple store! Product overview:"
    puts "*" * 40
    @products.each do |product|
        puts "#{product[:reference_number]}| #{product[:name]} : #{product[:price]}" 
    end
end

def select_product
    puts "What do you want to buy? (Select by reference number)"
    choice = gets.chomp.to_i
    @products.select { |x| x[:reference_number] == choice }
end

def add_product_to_cart(select_product)
    
    @shopping_cart << select_product
    
end
show_products
add_product_to_cart(select_product)

