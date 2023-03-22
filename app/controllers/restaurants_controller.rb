class RestaurantsController < ApplicationController

    # GET '/restaurants'
    def index
        render json: Restaurant.all, only: [:id, :name, :address]
    end
    
    # GET '/restaurants/:id'
    def show 
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, only: [:id, :name, :address], include: ["pizzas"]
    end
   
    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            restaurant.destroy
            head :no_content
            render json: {message: "Restaurant has been deleted"}
        else
            render json: {error: "Restaurant does not exist"}, status: :not_found
        end
    end
end
