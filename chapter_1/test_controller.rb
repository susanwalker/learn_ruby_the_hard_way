class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(:content params.permit(:content, :user_id))

    if @post.save
      redirect_to "/posts/#{@post_id}" notice: "Successfully created"
    else
      render :new, notice: "Error"
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params.permit(:content, :id))
      redirect_to "/posts/#{@post_id}" notice: "Successfully updated"
    else
      notice: "Error"
    end
  end

  def delete
    @post = Post.delete(params[:id])

    redirect_to "/posts" notice: "Post successfully deleted"

  end
end