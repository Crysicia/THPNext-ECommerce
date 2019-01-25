# frozen_string_literal: true

FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    adress_2 { "MyString" }
    adress_2 { "MyString" }
    postcode { 1 }
    region { "MyString" }
    city { "MyString" }
    country { "MyString" }
    telephone { "MyString" }
  end
end
