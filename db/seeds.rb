puts "🌱 Seeding data..."

6.times do
    pizza = Pizza.create(
        name:  Faker::Food.dish,
        ingredients: Faker::Food.ingredient,
    )

    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
    )

    rand(3..6).times do
        RestaurantPizza.create(
            price: Faker::Number.between(from: 1, to: 10), 
            pizza_id: Pizza.pluck(:id).sample,
            restaurant_id: Restaurant.pluck(:id).sample,
            
        )
    end
end
