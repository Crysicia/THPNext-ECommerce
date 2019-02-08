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
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  has_discount        :boolean          default(FALSE)
#  discount_percentage :integer          default(0)
#  quantity            :integer
#

class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :item_wishlists, dependent: :destroy
  has_many :categories, through: :item_categories
  has_many :wishlists, through: :item_wishlists
  has_many :carts, dependent: :destroy
  has_one :stock, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :original_price, presence: true

  after_create :link_stock

  private

  def link_stock
    build_stock(quantity: 0).save
  end
end
