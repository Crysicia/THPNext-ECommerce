FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
    price { 1.5 }
    photo { "MyString" }
    quantity { 1 }
  end
end
