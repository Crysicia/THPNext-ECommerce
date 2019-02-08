# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id                  :bigint(8)        not null, primary key
#  name                :string           not null
#  description         :text             not null
#  original_price      :float            not null
#  photo               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  has_discount        :boolean          default(FALSE)
#  discount_percentage :integer          default(0)
#  quantity            :integer          default(0)
#

FactoryBot.define do
  factory :item do
    name           { Faker::Cannabis.buzzword }
    description    { Faker::VForVendetta.quote }
    original_price { Faker::Number.decimal(2) }
    photo          { Faker::LoremPixel.image }
    has_discount   { Faker::Boolean.boolean }
    discount_percentage { Faker::Number.between(10, 50) }
    quantity { Faker::Number.between(5, 500) }

    trait :with_discount do
      has_discount { true }
    end

    trait :without_discount do
      has_discount { false }
    end

    factory :item_with_discount, traits: %i[with_discount]
    factory :item_without_discount, traits: %i[without_discount]
  end
end
