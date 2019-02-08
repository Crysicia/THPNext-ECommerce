# frozen_string_literal: true

class AddDefaultQuantityToItems < ActiveRecord::Migration[5.2]
  def up
    change_column :items, :quantity, :integer, default: 0
  end

  def down
    change_column :items, :quantity, :integer, default: nil
  end
end
