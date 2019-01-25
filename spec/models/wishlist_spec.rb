# frozen_string_literal: true

# == Schema Information
#
# Table name: wishlists
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Wishlist, type: :model do
  describe 'Database' do
    subject(:new_profile) { described_class.new }

    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Association' do
    it { is_expected.to have_many(:item_wishlists) }
    it { is_expected.to have_many(:items).through(:item_wishlists) }
  end
end
