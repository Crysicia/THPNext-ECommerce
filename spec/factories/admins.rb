# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
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
  factory :admin do
    password = Faker::Internet.password
    email                 { Faker::Internet.email }
    password              { password }
    password_confirmation { password }

    trait :confirmed do
      confirmed_at { Time.current }
    end

    after(:create) do |_user|
      create(:profile, profileable: admin)
    end

    factory :admin_confirmed, traits: %i[confirmed]
  end
end
