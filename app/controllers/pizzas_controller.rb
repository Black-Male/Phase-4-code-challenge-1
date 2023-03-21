class PizzasController < ApplicationController
    def index
        render json: Pizza.all, only: [:name, :ingredients]
    end
end
