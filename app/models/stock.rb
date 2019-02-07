# frozen_string_literal: true

# == Schema Information
#
# Table name: stocks
#
#  id         :bigint(8)        not null, primary key
#  quantity   :integer          default(0)
#  item_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ApplicationRecord
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }
  belongs_to :item
end
