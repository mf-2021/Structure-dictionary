class Public::HomesController < ApplicationController
  def top
    @structures = Structure.all
  end

  def about
  end
end
