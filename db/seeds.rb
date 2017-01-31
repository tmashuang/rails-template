5.times {Category.create(name: Faker::Commerce.department)}

20.times {Product.create(name: Faker::Commerce.product_name,
                          price: Faker::Number.decimal(2),
                          quantity: Faker::Number.between(1, 10),
                          description: Faker::Lorem.paragraph,
                          picture: Faker::Avatar.image(Faker::Lorem.word, "250x250")
                          )}

20.times {Category.find(rand(1..5)).products << Product.find(rand(1..20))}
