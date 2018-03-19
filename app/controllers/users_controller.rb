class UsersController < ApplicationController
  layout "in_layout"

  # 新規作成フォーム
  def new
    @user = User.new
  end

  # ユーザの新規登録
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "登録が完了しました。"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private
  def user_params
    attrs = [:id, :name, :address, :mail, :pass]
    params.require(:user).permit(attrs)
  end
end
