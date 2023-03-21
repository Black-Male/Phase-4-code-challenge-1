class PizzasController < ApplicationController
    def index
        render json: Pizza.all, only: [:id, :name, :ingredients]
    end
end
