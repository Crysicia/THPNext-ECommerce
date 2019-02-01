# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :adress_1, null: false
      t.string :adress_2
      t.integer :postcode, null: false
      t.string :region
      t.string :city, null: false
      t.string :country, null: false
      t.string :telephone, null: false

      t.timestamps
    end
  end
end
