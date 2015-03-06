class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      respond_to do |format|
        format.html {redirect_to user_path(@post.user.username), notice: "Post created!"}
      end
    else
      redirect_to user_path(@post.user.username), notice: "Uh oh! Something went wrong!"
    end
  end
  
  def update
    if @post.update(post_params)
      respond_to do |format|
        format.html {redirect_to user_path(@post.user.username), notice: "Post updated!"}
      end
    else
      redirect_to user_path(@post.user.username), notice: "Uh oh! Something went wrong!"
    end
  end
  
  def edit
  end
  
  def destroy
    @post.destroy
    respond_to do |format|
        format.html {redirect_to user_path(@post.user.username), notice: "Post destroyed!"}
      end
  end
  
  private
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:content)
  end
  
  
end