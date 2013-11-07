class Product < ActiveRecord::Base
  belongs_to :supplier
  attr_accessible :description, :name, :price, :unit_mesure, :supplier_id, :inventory
end
