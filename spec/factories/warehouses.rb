FactoryBot.define do
  factory :warehouse do
    city { "MyString" }
    state { "MyString" }
    postcode { "MyString" }
    listing { nil }
  end
end
