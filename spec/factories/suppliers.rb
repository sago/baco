# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supplier do  |f|
    f.name {"USG Tablaroca"}
    f.address {"Carretera a Guadalajara 443"}
    f.phone {"3123432121"}
    f.rfc {"USG801221"}
    f.zip_code {"28048"}
    f.website {"www.usgcolima.com"}
  end
end
