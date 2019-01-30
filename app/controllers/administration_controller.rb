# frozen_string_literal: true

class AdministrationController < ApplicationController
  # binding.pry
  before_action :authenticate_admin!
  def index; end
end
