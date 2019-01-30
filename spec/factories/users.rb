# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(6, 12)
    email                 { Faker::Internet.email }
    password              { password }
    password_confirmation { password }

    trait :confirmed do
      confirmed_at { Time.current }
    end

    #    after(:create) do |user|
    #      create(:profile, profileable: user)
    #      create(:cart)
    #    end

    factory :user_confirmed, traits: %i[confirmed]
  end
end
