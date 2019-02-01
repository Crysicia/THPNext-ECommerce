# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  total_price :float
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  quantity    :integer
#

require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'Database' do
    subject(:new_order) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:item_orders).dependent(:destroy) }
    it { is_expected.to have_many(:items).through(:item_orders) }
    it { is_expected.to belong_to(:user) }
  end
end
