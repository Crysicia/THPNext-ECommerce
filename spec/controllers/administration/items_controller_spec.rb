# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Administration::ItemsController, type: :controller do
  let(:admin) { create(:admin_confirmed) }
  let(:user) { create(:user_confirmed) }

  def sign_in_admin
    sign_in admin
  end

  describe "GET #index" do
    it "returns http success when signed in as admin" do
      sign_in_admin
      get :index
      expect(response).to have_http_status(:success)
    end

    it "fails when not signed in" do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it "fails when user signed in" do
      sign_in user
      get :index
      expect(response).not_to have_http_status(:success)
    end
  end

  describe "GET #show" do
    skip "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #new" do
    skip "returns http success" do
      post :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    skip "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #edit" do
    skip "returns http success" do
      post :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    skip "returns http success" do
      put :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    skip "returns http success" do
      delete :destroy
      expect(response).to have_http_status(:success)
    end
  end
end
