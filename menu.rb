class Menu

    require "./dish"
    require "./ingredient"

    def initialize

        @menu = []

        @menu << Dish.new("Margherita", [
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.2)
          ], 9)
        @menu << Dish.new("Napoletana", [
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.2),
            Ingredient.new(Ingredient::ANCHOVIES, 0.05)
          ], 11)
        @menu << Dish.new("Peperoni",[
            Ingredient.new(Ingredient::TOMATO, 3),
            Ingredient.new(Ingredient::DOUGH, 0.25),
            Ingredient.new(Ingredient::MOZZARELLA, 0.2),
            Ingredient.new(Ingredient::PEPERONI, 0.1)
          ], 12)

    end

    def contents
        @menu
    end

end
