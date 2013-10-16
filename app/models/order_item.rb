class OrderItem < ActiveRecord::Base
  belongs_to :order
  attr_accessible :order_id, :price, :product_id, :quantity
end
