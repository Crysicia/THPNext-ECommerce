# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id               :bigint(8)        not null, primary key
#  first_name       :string           default("0"), not null
#  last_name        :string           default("0"), not null
#  adress_1         :string           default("0"), not null
#  adress_2         :string
#  postcode         :integer          default(0), not null
#  region           :string
#  city             :string           default("0"), not null
#  country          :string           default("0"), not null
#  telephone        :string           default("0"), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  profileable_type :string
#  profileable_id   :bigint(8)
#

require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'Database' do
    subject(:new_profile) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:first_name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:last_name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:adress_1).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:adress_2).of_type(:string) }
    it { is_expected.to have_db_column(:postcode).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:region).of_type(:string) }
    it { is_expected.to have_db_column(:city).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:country).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:telephone).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Associations' do
    it { is_expected.to have_one(:wishlist) }
    it { is_expected.to belong_to(:profileable) }
  end
end
