class Public::WritingsController < ApplicationController
  def new
    @writing = Structure.new
    @writing.designers.build
    @genres = Genre.all
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
