class PostsController < ApplicationController
  def new
  end

  def show
    @image = Post.find_by(id: params[:id]).photo
  end

  def index
  end

  def create
  	post = Post.create!(post_params)
    p post
  	if post.save
      @image = post.photo
  		render :show
  	else
  		@errors = post.errors.full_messages
  		render :new
  	end
  end

  private
  def post_params
  	params.require(:post).permit(:title, :description, :photo)
  end
end
