class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @structures = Structure.all
  end

end
