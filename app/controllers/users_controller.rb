class UsersController < ApplicationController
  def index
    @users = User.near("#{current_user.suburb} #{current_user.state}", 8_000_000 , order: 'distance')
  end
  def show
    @user = User.find(params[:id])
    # Punching bag gem hit counter
    @user.punch(request)
  end
end
