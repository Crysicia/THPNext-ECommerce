# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Model instantiation' do
    subject(:new_user) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false, default: "") }
    end
  end
end
