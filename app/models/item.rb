class Item < ApplicationRecord
  has_many :item_categories
  has_many :item_wishlists
  has_many :categories, through: :item_categories
  has_many :wishlists, through: :item_wishlists
end
