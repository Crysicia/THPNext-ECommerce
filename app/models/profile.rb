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

class Profile < ApplicationRecord
  belongs_to :profileable, polymorphic: true
  has_one :wishlist, dependent: :destroy
end
