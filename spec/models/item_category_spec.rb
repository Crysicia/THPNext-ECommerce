# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  describe 'Database' do
    subject(:new_item) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end
end
