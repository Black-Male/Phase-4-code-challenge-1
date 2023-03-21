class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizza = RestaurantPizza.create(myparams)
        render json: restaurant_pizza, status: :created
    end

    private

    def myparams
        params.permit(:price, :restaurant_id, :pizza_id)
    end
end
