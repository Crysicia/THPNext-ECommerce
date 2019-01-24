class Wishlist < ApplicationRecord
  has_many :item_wishlists
  has_many :items, through: :item_wishlists
end
