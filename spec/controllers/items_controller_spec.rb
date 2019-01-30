# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show/:id" do
    it "returns http success" do
      let(:item) { create(:item) }

      get :show, params: { id: item.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show/1" do
    it { is_expected.to route(:get, '/items/1').to(action: :show, id: 1) }
  end
end
