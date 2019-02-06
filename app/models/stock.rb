# frozen_string_literal: true

class Stock < ApplicationRecord
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }
  belongs_to :item
end
