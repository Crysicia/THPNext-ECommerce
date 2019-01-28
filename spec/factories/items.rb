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

FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
    original_price { 1.5 }
    photo { "MyString" }
    quantity { 1 }
  end
end
