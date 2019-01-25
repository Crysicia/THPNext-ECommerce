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
