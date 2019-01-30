# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id                  :bigint(8)        not null, primary key
#  name                :string           not null
#  description         :text             not null
#  original_price      :float            not null
#  photo               :string
#  quantity            :integer          default(0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  has_discount        :boolean          default(FALSE)
#  discount_percentage :integer          default(0)
#

class Item < ApplicationRecord
  # binding.pry
  has_many :item_categories, dependent: :destroy
  has_many :item_wishlists, dependent: :destroy
  has_many :categories, through: :item_categories
  has_many :wishlists, through: :item_wishlists

  def original_price
    1.00
  end
end
