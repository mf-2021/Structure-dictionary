class Public::StructuresController < ApplicationController
  def index
  end

  def show
    @writing = Structure.find(params[:id])
    # @add_writing = Structure.new
    structure_tag = StructureTag.find_by(structure_id: @writing.id)
    @tags = Tag.where(id: structure_tag.tag_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
