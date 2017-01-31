FactoryGirl.define do
  factory :category do |f|
    f.name { Faker::Commerce.department }
  end
end
