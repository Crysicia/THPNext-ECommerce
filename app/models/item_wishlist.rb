# frozen_string_literal: true

class ItemWishlist < ApplicationRecord
  belongs_to :item
  belongs_to :wishlist
end
