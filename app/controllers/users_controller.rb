class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: 'ユーザー情報を更新しました。'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :sex_id, :generation_id, :height, :body_weight)
  end
end
