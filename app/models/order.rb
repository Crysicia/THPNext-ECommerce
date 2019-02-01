# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  total_price :float
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  quantity    :integer
#

class Order < ApplicationRecord
  has_many :item_orders, dependent: :destroy
  has_many :items, through: :item_orders
  belongs_to :user
end
