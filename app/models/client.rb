class Client < ActiveRecord::Base
  attr_accessible :address, :name, :phone, :rfc, :zip_code
end
