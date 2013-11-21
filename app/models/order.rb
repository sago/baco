class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items#, dependent:  :destroy
  attr_accessible :client_id, :close_at, :discount, :total, :id
  accepts_nested_attributes_for :order_items

  #Validations
  validates_associated :order_items
  validates :folio_bill, :format => { :with => ['A']+/[0-9]/}

  def update_total
    total = 0
    order_items.each { |ai| total += (ai.price * ai.quantity) }
    self.total = total
    save
  end
end
