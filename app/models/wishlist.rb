# frozen_string_literal: true

class Wishlist < ApplicationRecord
  has_many :item_wishlists, dependent: :destroy
  has_many :items, through: :item_wishlists
end
