class Public::WritingsController < ApplicationController
  def new
    @writing = Structure.new
    @writing.designers.build
    @writing.photos.build
    @writing.introductions.build
    @tags = Tag.new
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
    @add_writing = Structure.new
    structure_tag = StructureTag.find_by(structure_id: @writing.id)
    @tags = Tag.where(id: structure_tag.tag_id)
  end

  def edit
    @writing = Structure.find(params[:id])
    structure_tag = StructureTag.find_by(structure_id: @writing.id)
    @tags = Tag.find_by(id: structure_tag.tag_id)
    @genres = Genre.all
    @add_writing = Structure.new
  end

  def update
    @writing = Structure.find(params[:id])
    @writing.update(structure_params)
    @tag = Tag.update(name: params[:structure][:tags][:name])
    redirect_to writing_path(params[:id])
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
