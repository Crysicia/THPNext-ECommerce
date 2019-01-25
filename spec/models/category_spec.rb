# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Database' do
    subject(:new_category) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:description).of_type(:text).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Association' do
    it { is_expected.to have_many(:item_categories) }
    it { is_expected.to have_many(:items).through(:item_categories) }
  end
end
