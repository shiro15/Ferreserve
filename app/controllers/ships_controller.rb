class ShipsController < ApplicationController

  # 船一覧
  def index
    @ships = Ship.order("id")
  end

  # 船の詳細
  def show
    @ship = Ship.find(params[:id])
  end

  # admin 新規作成フォーム
  def new
  end

  # admin 船の新規登録
  def create
  end

  # admin 船の削除
  def destroy
  end
end
