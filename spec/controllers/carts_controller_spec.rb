# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CartsController, type: :controller do
  let(:user) { create(:user_confirmed) }
  let(:item) { create(:item) }

  def login_user
    sign_in user
  end

  before do
    @cart = create(:cart, user: user, item: item, quantity: 1)
  end

  describe 'GET #show' do
    it 'fails w/o an authenticated user' do
      get :show
      expect(response).to redirect_to(new_user_session_path)
    end

    it 'succeeds w/ an authenticated user' do
      login_user
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    let(:params) { { item: item, quantity: 42, type: "increment" } }

    it 'fails w/o an authenticated user' do
      put :update, params: params
      @cart.reload
      expect(@cart.quantity).to eq(1)
    end

    it 'succeeds w/ an authenticated user' do
      login_user
      put :update, params: params
      @cart.reload
      expect(@cart.quantity).to eq(43)
    end
  end
end
