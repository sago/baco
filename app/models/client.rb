class Client < ActiveRecord::Base
  has_many :orders
  attr_accessible :address, :name, :phone, :rfc, :zip_code

  #Validations
  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true
  validates :rfc, :presence => true
  validates :zip_code, :presence => true

end
