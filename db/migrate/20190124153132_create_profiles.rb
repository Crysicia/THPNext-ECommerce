class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :adress_2
      t.string :adress_2
      t.integer :postcode
      t.string :region
      t.string :city
      t.string :country
      t.string :telephone

      t.timestamps
    end
  end
end
