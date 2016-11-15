class PcategoriesController < ApplicationController
  before_action :find_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def new
    @pcategory = Pcategory.new
  end

  def create
    @pcategory = Pcategory.new pcategory_params
    if @pcategory.save
      redirect_to root_path, notice: "Article saved!"
    else
      render 'new', notice: "Unable to save post"
    end
  end

  def index
    @pcategories = Pcategory.all 
  end
  def show

  end
  def edit
  end
  def update
    if @pcategoryt.update pcategory_params
      redirect_to @pcategory, notice: 'Updated'
    else
      render 'edit', notice: 'Error!'
    end
  end

  def destroy
    if @pcategory.destroy
      redirect_to pcategories_path, notice: 'Deleted'
    else
      redirect_to @pcategory, notice: 'Error to deleted'
    end
  end
  private
  def pcategory_params
    params.require(:pcategory).permit(:name, :slug)
  end
  def find_category
    @pcategory = Pcategory.friendly.find(params[:id])
  end
end
