class Public::WritingsController < ApplicationController
  def new
    @writing = Structure.new
    @writing.designers.new
    @writing.photos.build
    @writing.introductions.build
    @tag = Tag.new
    @genres = Genre.all
  end

  def create
    @writing = Structure.new(structure_params)
    @writing.user_id = current_user.id
    @writing.genre_id = params[:genre][:name].to_i
    @writing.structure_users.new(user_id: current_user.id)
    @writing.save
    @tag = Tag.new(name: params[:structure][:tags][:name])
    @tag.save
    @structure_tag =StructureTag.new(tag_id: @tag.id, structure_id: @writing.id)
    @structure_tag.save
    redirect_to "/"
  end

  def index
    @writings = Structure.all

  end

  def show
    @writing = Structure.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def structure_params
    params.require(:structure).permit(:name, :postal_code, :prefecture, :city, :address, designers_attributes: [:structure_id, :last_name, :first_name], photos_attributes: [:image], introductions_attributes: [:introduction])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
