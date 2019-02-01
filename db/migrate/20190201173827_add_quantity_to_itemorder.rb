# frozen_string_literal: true

class AddQuantityToItemorder < ActiveRecord::Migration[5.2]
  def change
    add_column :item_orders, :quantity, :integer
  end
end
