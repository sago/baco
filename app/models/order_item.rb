class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :order_id, :price, :product_id, :quantity
  after_save :update_order_total

  #Validations
  validates :quantity, :numericality => true
  validates :price, :numericality => true
  validates :product_id, :presence => true
  validates :order_id, :presence => true

  def update_order_total
    order.update_total if order.present?
  end

end
