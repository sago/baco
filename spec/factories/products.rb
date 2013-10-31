# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do |f|
    f.name {"Grava"}
    f.description {"Viaje de grava de 1 1/2 toneladas"}
    f.price {1500}
    f.unit_mesure {"Viaje"}
  end
end
