# frozen_string_literal: true

class AddPolymorphismToProfile < ActiveRecord::Migration[5.2]
  def change
    change_table :profiles do |t|
      t.references :profileable, polymorphic: true, index: true
    end
  end
end
