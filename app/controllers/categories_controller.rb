class CategoriesController < ApplicationController


  def index
    @categories = Category.all
  end
  
  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
  end
  
  def new
    @category = Category.new
  end
  
  
  def create
    @category = Category.new(params[:category])
      if @category.save
        redirect_to categories_path, :notice => "your category has been saved"
      else
        render "new"
      end
 end
end
