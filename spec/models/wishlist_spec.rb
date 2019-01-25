# frozen_string_literal: true

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
