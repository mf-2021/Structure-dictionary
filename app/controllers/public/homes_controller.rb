class Public::HomesController < ApplicationController
  # ユーザー以外のアクセス制限
  before_action :authenticate_user!, except: [:top, :about]

  def top
    @structures = Structure.all
    @users = User.all
  end

  def about
  end
end
