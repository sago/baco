class Supplier < ActiveRecord::Base
  attr_accessible :address, :name, :phone, :rfc, :website, :zip_code
end
