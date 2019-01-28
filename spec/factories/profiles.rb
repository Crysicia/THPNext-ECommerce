# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id               :bigint(8)        not null, primary key
#  first_name       :string           not null
#  last_name        :string           not null
#  adress_1         :string           not null
#  adress_2         :string
#  postcode         :integer          not null
#  region           :string
#  city             :string           not null
#  country          :string           not null
#  telephone        :string           not null
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
