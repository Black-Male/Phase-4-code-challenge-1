class RestaurantPizzasController < ApplicationController
    skip_before_action :verify_authenticity_token


    def create
        restaurant_pizza = RestaurantPizza.create(myparams)
        # render json: restaurant_pizza, status: :created
        # render json: Pizza.find(RestaurantPizza.find_by(pizza_id: params[:pizza_id]))
        render json: restaurant_pizza.pizza, only: [:id, :name, :ingredients], status: :created
    end

    private

    def myparams
        params.permit(:price, :restaurant_id, :pizza_id)
    end
end
