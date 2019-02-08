# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  let(:user) { create(:user_confirmed) }

  def login_user
    sign_in user
  end

  before do
    @user_profile = create(:profile, profileable: user)
  end

  describe "GET #show" do
    it "fails when not authentified" do
      get :show
      expect(response).to redirect_to(new_user_session_path)
    end

    it "succeeds when authentified" do
      login_user
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "fails when not authentified" do
      get :edit
      expect(response).to redirect_to(new_user_session_path)
    end

    it "succeeds when authentified" do
      login_user
      get :edit, params: { id: user.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    let(:params) { { profile: { first_name: "Aurora", last_name: "Phi", adress_1: '5 Parvis Alan Turing', adress_2: 'Station F', postcode: 75_013, region: 'Ile-de-France', city: 'Paris', country: 'France', telephone: '+33123456789' } } }
    let(:invalid_params) { { profile: { first_name: "Invalid", last_name: "Params", city: '' } } }

    context 'when not authentified' do
      it "fails to update" do
        put :update, params: params
        @user_profile.reload
        expect(@user_profile.first_name).not_to eq("Aurora")
        expect(@user_profile.last_name).not_to eq("Phi")
      end
    end

    context 'when authentified' do
      before { login_user }

      it 'succeed when all fields are populated' do
        put :update, params: params
        @user_profile.reload
        expect(@user_profile.first_name).to eq("Aurora")
        expect(@user_profile.last_name).to eq("Phi")
        expect(@user_profile.adress_1).to eq("5 Parvis Alan Turing")
        expect(@user_profile.adress_2).to eq("Station F")
        expect(@user_profile.postcode).to eq(75_013)
        expect(@user_profile.region).to eq("Ile-de-France")
        expect(@user_profile.city).to eq("Paris")
        expect(@user_profile.country).to eq("France")
        expect(@user_profile.telephone).to eq("+33123456789")
      end

      it "fails when not all fields are populated" do
        put :update, params: invalid_params
        @user_profile.reload
        expect(@user_profile.first_name).not_to eq("Invalid")
        expect(@user_profile.last_name).not_to eq("Params")
      end

      it 'redirect to profile page' do
        put :update, params: params
        expect(response).to redirect_to(profile_path)
      end
    end
  end
end
