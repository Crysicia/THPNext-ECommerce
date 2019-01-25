# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Database' do
    subject(:new_item) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:description).of_type(:text).with_options(null: false) }
    it { is_expected.to have_db_column(:original_price).of_type(:float).with_options(null: false) }
    it { is_expected.to have_db_column(:photo).of_type(:string) }
    it { is_expected.to have_db_column(:quantity).of_type(:integer).with_options(default: 0) }
    it { is_expected.to have_db_column(:has_discount).of_type(:boolean).with_options(default: false) }
    it { is_expected.to have_db_column(:discount_percentage).of_type(:integer).with_options(default: 0) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Association' do
    it { is_expected.to have_many(:item_categories) }
    it { is_expected.to have_many(:categories).through(:item_categories) }
    it { is_expected.to have_many(:item_wishlists) }
    it { is_expected.to have_many(:wishlists).through(:item_wishlists) }
  end
end
