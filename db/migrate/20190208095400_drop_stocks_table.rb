# frozen_string_literal: true

class DropStocksTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :stocks do |t|
      t.integer :quantity
      t.references :item

      t.timestamps null: false
    end
  end
end
