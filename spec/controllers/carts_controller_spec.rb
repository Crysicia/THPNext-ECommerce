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
    let(:params_increment) { { item: item, quantity: 42, type: "increment" } }
    let(:params_decrement) { { item: item, quantity: 42, type: "decrement" } }

    context 'when not authentified' do
      it 'fails to increment' do
        put :update, params: params_increment
        @cart.reload
        expect(@cart.quantity).to eq(1)
      end

      it 'fails to decrement' do
        put :update, params: params_decrement
        @cart.reload
        expect(@cart.quantity).to eq(1)
      end
    end

    context 'when authentified' do
      before { login_user }

      it 'succeeds to increment' do
        put :update, params: params_increment
        @cart.reload
        expect(@cart.quantity).to eq(43)
      end

      it 'succeeds to decrement' do
        put :update, params: params_decrement
        @cart.reload
        expect(@cart.quantity).to eq(-41)
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'when not authentified' do
      it 'fails to destroy' do
        expect { delete :destroy, params: { item: @cart.item } }.to change(Cart, :count).by(0)
      end
    end

    context 'when authentified' do
      it 'succeeds to destroy' do
        login_user
        expect { delete :destroy, params: { item: @cart.item } }.to change(Cart, :count).by(-1)
      end
    end
  end
end
