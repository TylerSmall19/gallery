class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find_by(id: params[:id])
    if @post
      @image = @post.photo
      if request.xhr?
        render :show, layout: false
      end
    else
      if request.xhr?
        render :out_of_images, layout: false
      else
        redirect_to new_post_path
      end
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
