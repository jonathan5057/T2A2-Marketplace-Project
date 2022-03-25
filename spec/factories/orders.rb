FactoryBot.define do
  factory :order do
    quantity { 1 }
    price { 1.5 }
    user { nil }
    listing { nil }
  end
end
