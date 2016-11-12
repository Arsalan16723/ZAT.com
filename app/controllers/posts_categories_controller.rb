class PostsCategoriesController < ApplicationController
  def new
    @postscategory = PostsCategory.new
  end

  def create
    @postscategory = PostsCategory.new postcategory_params
    if @postscategory.save
      redirect_to @postscategory, notice: "Article saved!"
    else
      render 'new', notice: "Unable to save post"
    end
  end

  def index
    @posts_categories = PostsCategory.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
 def postcategory_params
    params.require(:postscategory).permit(:name)
 end
end
