# frozen_string_literal: true

class AddDiscountToItem < ActiveRecord::Migration[5.2]
  def change
    change_table :items, bulk: true do |t|
      t.column :has_discount, :boolean, default: false
      t.column :discount_percentage, :integer, default: 0
    end
  end
end
