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

class Wishlist < ApplicationRecord
  belongs_to :profile
  has_many :item_wishlists, dependent: :destroy
  has_many :items, through: :item_wishlists
end
