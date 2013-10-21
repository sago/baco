class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :order_id, :price, :product_id, :quantity

  after_save :update_order_total

  def update_order_total
    order.update_total
  end

end
