# frozen_string_literal: true

module Administration
  class ProfilesController < AdministrationController

    def index
      @profiles = Profile.all
    end

    def show
      @profile = Profile.find(params[:id])
    end

    def edit
      @profile = Profile.find(params[:id])
    end

    def update
      @profile = Profile.find(params[:id])

      if @profile.update(profile_params)
        flash[:notice] = "Profile was successfully updated!"
        redirect_to administration_profiles_path
      else
        render 'edit'
      end
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :adress_1, :adress_2, :postcode, :region, :city, :country, :telephone)
    end

  end
end
