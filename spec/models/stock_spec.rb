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

require 'rails_helper'

RSpec.describe Stock, type: :model do
  describe 'Model instantiation' do
    subject(:new_stock) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:quantity).of_type(:integer).with_options(presence: true, numericality: { only_integer: true, greater_than_or_equal: 0 }) }
    it { is_expected.to have_db_column(:item_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:item) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:quantity) }
  end
end
