class Client < ActiveRecord::Base
  has_many :orders
  attr_accessible :address, :name, :phone, :rfc, :zip_code

  #Validations
  #validates_presence_of (:name, :address, :phone, :rfc, :zip_code)

end
