class AddDiscountToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :has_discount, :boolean, default: false
    add_column :items, :discount_percentage, :integer, default: 0
  end
end
