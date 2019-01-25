# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :item_wishlists, dependent: :destroy
  has_many :categories, through: :item_categories
  has_many :wishlists, through: :item_wishlists
end
