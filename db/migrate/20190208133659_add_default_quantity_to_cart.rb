class AddDefaultQuantityToCart < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :carts, :quantity, :integer, default: 0
    end

    def down
      change_column :carts, :quantity, :integer, default: nil
    end
  end
end
