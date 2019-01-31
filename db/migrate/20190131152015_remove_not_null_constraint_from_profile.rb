# frozen_string_literal: true

class RemoveNotNullConstraintFromProfile < ActiveRecord::Migration[5.2]
  def up
    change_table :profiles, bulk: true do |t|
      t.change_default :first_name, 0
      t.change_default :last_name, 0
      t.change_default :adress_1, 0
      t.change_default :postcode, 0
      t.change_default :city, 0
      t.change_default :country, 0
      t.change_default :telephone, 0
    end
  end

  def down
    change_table :profiles, bulk: true do |t|
      t.change_default :first_name, nil
      t.change_default :last_name, nil
      t.change_default :adress_1, nil
      t.change_default :postcode, nil
      t.change_default :city, nil
      t.change_default :country, nil
      t.change_default :telephone, nil
    end
  end
end
