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
end
