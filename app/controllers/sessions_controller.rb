class SessionsController < ApplicationController
  layout "in_layout"

  def new
  end

  def create
    user = User.authenticate(params[:session][:mail], params[:session][:pass])
    if user
      session[:user_id] = user.id
      redirect_to :root
    else
      flash.alert = "メールアドレスとパスワードが一致しません"
      redirect_to :login
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root
  end
end
