# frozen_string_literal: true

# == Schema Information
#
# Table name: item_categories
#
#  id          :bigint(8)        not null, primary key
#  item_id     :bigint(8)
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :item_category do
    item
    category
  end
end
