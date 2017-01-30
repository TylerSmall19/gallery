class PostsController < ApplicationController
  def new
  end

  def show
  end

  def index
  end

  def create
  	post = Post.new(post_params)
  	if post.save
  		render text: ':)'
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
