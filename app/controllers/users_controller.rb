class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if user.save!
      redirect_to users_path, notice: 'User was successfully created'
    else
      render :new
    end
  end

  def show
    @user.email
  end

  def create_random
    GenerateRandomUserJob.perform_later()
    redirect_to users_path, notice: 'User was successfully created'
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password)
  end
end
