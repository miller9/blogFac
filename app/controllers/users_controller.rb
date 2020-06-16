class UsersController < ApplicationController
  before_action :authenticate_user! # skip_before_filter
  def edit
    #current_user
    #redirect_to perfil_path
  end

  def update
    current_user.update(user_params)
    redirect_back(fallback_location: root_path) #ir a pag previa
  end

  def user_params
    params.require(:user).permit(:avatar)
  end

end
