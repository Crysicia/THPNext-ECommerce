# frozen_string_literal: true

# == Schema Information
#
# Table name: item_wishlists
#
#  id          :bigint(8)        not null, primary key
#  item_id     :bigint(8)
#  wishlist_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe ItemWishlist, type: :model do
  skip
end
