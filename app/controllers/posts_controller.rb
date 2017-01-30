class PostsController < ApplicationController
  def new
  end

  def show
    begin
      @post = Post.find(params[:id])
      @image = @post.photo
    rescue
      redirect_to new_post_path
    end
  end

  def index
  end

  def create
  	post = Post.new(post_params)
    p post
  	if post.save
  		redirect_to post
  	else
  		@errors = post.errors.full_messages
      p @errors
  		render :new
  	end
  end

  private
  def post_params
  	params.require(:post).permit(:title, :description, :photo)
  end
end
