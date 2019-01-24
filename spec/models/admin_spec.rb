# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin, type: :model do
describe 'Model instantiation' do
    subject(:new_admin) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false, default: "") }
    end
  end
end
