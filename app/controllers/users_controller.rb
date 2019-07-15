class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(resources_params)
    @user.save
    redirect_to new_session_path, notice: 'Kamu berhasil membuat akun, silakan login!'
  end

  private

  def resources_params
    params.require(:user).permit(:name, :username, :password)
  end
end
