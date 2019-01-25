# frozen_string_literal: true

class AddProfileIdToWishlist < ActiveRecord::Migration[5.2]
  def change
    add_reference :wishlists, :profile, foreign_key: true
  end
end
