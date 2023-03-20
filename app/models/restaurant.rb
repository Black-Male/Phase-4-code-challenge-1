class Restaurant < ApplicationRecord
    has_many :pizzas, through: :restaurant_pizzas

    @list = []

    def mypizzas
        empty = []
        empty << RestaurantPizza.where(restaurant_id: self.id)
    end
end
