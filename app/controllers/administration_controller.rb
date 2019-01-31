# frozen_string_literal: true

class AdministrationController < ApplicationController
  # binding.pry
  before_action :authenticate_admin!
  layout 'administration'
  def index; end

  private

  def authenticate_admin!
    authenticate_user!
    redirect_to root_url unless current_user.admin
  end
end
