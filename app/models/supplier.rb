class Supplier < ActiveRecord::Base
  has_many :products
  attr_accessible :address, :name, :phone, :rfc, :website, :zip_code
end
