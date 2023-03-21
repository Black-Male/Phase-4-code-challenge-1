class RestaurantWithPizzaSerializer < ActiveModel::Serializer
  skip_before_action :verify_authenticity_token

  attributes :id,:name, :address
  has_many :pizzas, through: :restaurant_pizzas
end
