class Admin::GenresController < ApplicationController
  def index
    # ジャンル一覧を表示するインスタンス
    @genres = Genre.all
    # 空のインスタンスを作成
    @new_genre = Genre.new
  end

  def create
    # ジャンルの新規登録
    genre = Genre.new(genre_params)
    genre.save
    redirect_to request.referer

  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genre_params)
    redirect_to genres_path
  end


private
def genre_params
  params.require(:genre).permit(:name)
end


end
