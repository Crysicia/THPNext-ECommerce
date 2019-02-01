# frozen_string_literal: true

class CreateItemWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :item_wishlists do |t|
      t.belongs_to :item, index: true
      t.belongs_to :wishlist, index: true
      t.timestamps
    end
  end
end
