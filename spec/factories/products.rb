FactoryGirl.define do
  factory :product do |f|
    f.name { Faker::Commerce.product_name }
    f.price { Faker::Commerce.price }
    f.quantity { rand(1..200)}
    f.description { Faker::Lorem.sentence }
    f.picture { Faker::Avatar.image(Faker::Lorem.word, "250x250") }
  end
end
