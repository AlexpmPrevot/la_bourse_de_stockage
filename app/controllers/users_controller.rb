class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @annonces = @user.annonces
  end

end
