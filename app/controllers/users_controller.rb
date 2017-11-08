class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    # Punching bag gem hit counter
    @user.punch(request)
  end
end
