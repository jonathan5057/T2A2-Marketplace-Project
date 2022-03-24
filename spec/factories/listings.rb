FactoryBot.define do
  factory :listing do
    category { "MyString" }
    title { "MyString" }
    quantity { 1 }
    price { 1.5 }
    user { nil }
  end
end
