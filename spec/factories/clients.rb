# spec/factories/clients.rb

FactoryGirl.define do
  factory :client do |f|
    f.name {"Javier Solorzano"}
    f.address {"Flores Magon # 12"}
    f.phone {"3153552832"}
    f.zip_code {"48975"}
    f.rfc {"SOLJ760809"}
  end
end