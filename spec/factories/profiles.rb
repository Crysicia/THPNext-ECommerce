# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id               :bigint(8)        not null, primary key
#  first_name       :string           default("0"), not null
#  last_name        :string           default("0"), not null
#  adress_1         :string           default("0"), not null
#  adress_2         :string
#  postcode         :integer          default(0), not null
#  region           :string
#  city             :string           default("0"), not null
#  country          :string           default("0"), not null
#  telephone        :string           default("0"), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  profileable_type :string
#  profileable_id   :bigint(8)
#

FactoryBot.define do
  factory :profile do
    first_name   { Faker::Name.first_name }
    last_name    { Faker::Name.last_name }
    adress_1     { Faker::Address.street_address }
    adress_2     { Faker::Address.secondary_address }
    postcode     { Faker::Number.between(10_000, 99_000) }
    region       { Faker::Address.state }
    city         { Faker::Address.city }
    country      { Faker::Address.country }
    telephone    { Faker::PhoneNumber.phone_number }

    after(:create) do |profile|
      create(:wishlist, profile: profile)
    end

    association :profileable, factory: :user
  end
end
