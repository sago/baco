class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  attr_accessible :client_id, :close_at, :discount, :total
end
