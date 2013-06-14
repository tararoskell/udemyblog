class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
    @category = Category.all
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "your post has been saved"
    else
      render "new"
    end
  end
  
  def edit
     @post = Post.find(params[:id])
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
end
