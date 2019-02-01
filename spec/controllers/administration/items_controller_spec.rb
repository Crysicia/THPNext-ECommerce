# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Administration::ItemsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(200)
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
