# frozen_string_literal: true

class RemoveQuantityToItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :quantity, :integer
  end
end
