# frozen_string_literal: true

module Administration
  class UsersController < AdministrationController
    def index
      @users = User.all
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if @user.update(user_params)
        redirect_to administration_users_path
        flash[:notice] = "ok!"
      else
        render 'new'
        flash[:notice] = "Il y a eu un problème"
      end
    end

    def user_params
      params.require(:user).permit!
    end
  end
end
