# frozen_string_literal: true

FactoryBot.define do
  factory :cart do
    user { nil }
    item { nil }
    quantity { 1 }
  end
end
