# frozen_string_literal: true

class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile

  def show; end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :adress_1, :adress_2, :postcode, :region, :city, :country, :telephone)
  end

  def set_profile
    @profile = current_user.profile
  end
end
