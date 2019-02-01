# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  describe "GET #show" do
    it "should fail when not authentified"
    it "should succeed when authentified"
  end

  describe "GET #edit" do
    it "should fail when not authentified"
    it "should succeed when authentified"
  end

  describe "POST #update" do
    it "should fail when not authentified"
    it "should fail when not all fields are populated"
    it "should succeed when authentified"
    it "should redirect to profile"
  end
end
