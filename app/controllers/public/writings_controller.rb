class Public::WritingsController < ApplicationController
  def new
    @structure = Structure.new
    # @writing.designers.buil
    # @writing.photos.build
    # @writing.introductions.build
    # @tags = Tag.new
    @genres = Genre.all
  end

  def create
    @structure = Structure.new(structure_params)
    @structure.user_id = current_user.id
    @structure.genre_id = params[:genre][:name].to_i
    @structure.structure_users.new(user_id: current_user.id)
    @structure.save
    # @tag = Tag.new(name: params[:structure][:tags][:name])
    # @tag.save
    # @structure_tag =StructureTag.new(tag_id: @tag.id, structure_id: @structure.id)
    # @structure_tag.save
    redirect_to "/"
  end

  def index
    @writings = Structure.all

  end

  def show
    @structure = Structure.find(params[:id])
    # byebug
    # @add_writing = Structure.new
    # structure_tag = StructureTag.find_by(structure_id: @structure.id)
    # @tags = Tag.where(id: structure_tag.tag_id)
    # geo = @writing.structure_address
    # @geo = Geocoder.coordinates(geo)
    # byebug
  end

  def edit
    @structure = Structure.find(params[:id])
    # structure_tag = StructureTag.find_by(structure_id: @writing.id)
    # @tags = Tag.find_by(id: structure_tag.tag_id)
    @genres = Genre.all
    # @add_writing = Structure.new
  end

  def update
    @structure = Structure.find(params[:id])
    @structure.update(structure_params)
    # @tag = Tag.update(name: params[:structure][:tags][:name])
    redirect_to writing_path(params[:id])
  end

  def destroy
  end


  private

  def structure_params
    # params.require(:structure).permit(:name, :postal_code, :prefecture, :city, :address, designers_attributes: [:structure_id, :last_name, :first_name], photos_attributes: [:image], introductions_attributes: [:introduction])
    params.require(:structure).permit(:name, :postal_code, :prefecture, :city, :address, :last_name, :first_name, :image, :introduction)
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
