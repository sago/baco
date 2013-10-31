# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_item do |f|
    f.order_id {FactoryGirl.create(:order).id}
    f.product_id {1}
    f.quantity {3}
    f.price {299.99}
  end
end
