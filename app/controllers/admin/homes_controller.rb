class Admin::HomesController < ApplicationController
# 管理者側homesコントローラー

  def top
    @structures = Structure.all
  end

end
