class LandingController < ApplicationController
  
  def index
  	@post = Post.new
  end

  def create
  	@post = Post.all.build(post_params)
  	@post.save
  	redirect_to(root_path)
  end

  private

  def set_post
  	@post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :message)
  end

end
