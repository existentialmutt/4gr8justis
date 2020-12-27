class TagsController < ApplicationController
  def index
  end

  def show
    @tag = Tag.find params[:id]
    render @tag
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def update
    @tag = Tag.find params[:id]
    if @tag.update params.require(:tag).permit(:budget)
      redirect_to @tag
    else
      render :edit
    end
  end
    
end
