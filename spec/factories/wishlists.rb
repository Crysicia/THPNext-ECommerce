# frozen_string_literal: true

# == Schema Information
#
# Table name: wishlists
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  profile_id :bigint(8)
#

FactoryBot.define do
  factory :wishlist do
    user
  end
end
