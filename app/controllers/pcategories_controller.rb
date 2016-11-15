class PcategoriesController < ApplicationController
  def new
    @pcategory = Pcategory.new
  end

  def create
    @pcategory = Pcategory.new pcategory_params
    if @category.save
      redirect_to root_path, notice: "Article saved!"
    else
      render 'new', notice: "Unable to save post"
    end
  end

  def index
    @pcategories = Pcategory.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def pcategory_params
    params.require(:pcategory).permit(:name)
  end
end
