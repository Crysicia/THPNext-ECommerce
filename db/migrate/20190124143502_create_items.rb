# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.float :original_price, null: false
      t.string :photo
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end
