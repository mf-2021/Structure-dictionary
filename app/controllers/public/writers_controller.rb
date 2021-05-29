class Public::WritersController < ApplicationController
  before_action :authenticate_user!
  # before_action :logged_in_user, only: [:edit]

  def index
    @users = User.all
  end

  def show
    @structures = Structure.where(user_id: current_user.id)
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to writer_path(current_user.id)
  end

  def unsubscribe
  end

  def withdraw
    @user = current_user
    @user.update(is_deleted: "退会")
    reset_session
    redirect_to "/"
  end

  def logged_in_user
    unless current_user.id == params[:id]
      redirect_to writer_path(current_user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end

end
