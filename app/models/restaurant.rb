class Restaurant < ApplicationRecord
    has_many :pizzas, through: :restaurant_pizzas

    @list = []

    def mypizzas
        z = RestaurantPizza.where()
    end
end
