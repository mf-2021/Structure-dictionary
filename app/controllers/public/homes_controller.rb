class Public::HomesController < ApplicationController
  def top
    @photos = Photo.all
  end

  def about
  end
end
