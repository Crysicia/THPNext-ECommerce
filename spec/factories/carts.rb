# frozen_string_literal: true

FactoryBot.define do
  factory :cart do
    user
    item
    quantity { Faker::Number.between(1, 50) }
  end
end
