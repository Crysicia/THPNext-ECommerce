# frozen_string_literal: true

class AddIndexToItemWishlist < ActiveRecord::Migration[5.2]
  def change
    add_index :item_wishlists, %i[item_id wishlist_id], unique: true
  end
end
