# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do |f|
    f.client_id {1}
    f.discount {0}
    f.close_at {"2013-10-22 03:24:03 UTC"}
    f.total {999.99}
  end
end
