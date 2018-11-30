class PostsController < ApplicationController

  def new
  	@post = Post.new
  	@post.albums.build
  end

  def create
    unless Point.exists?(user_id: current_user.id)
      new_point_model = Point.new(user_id: current_user.id)
      new_point_model.save
    end
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save

    if @post.save
      current_point = Point.find_by(user_id: current_user.id)
      updated_point = current_point.token + 5
      current_point.update(token: updated_point)
      redirect_to '/posts'
    else
      render :action => "new"
    end
  end

  def index
  	@posts = Post.search(params[:search])
  end

  def show
  	@post = Post.find(params[:id])
  	@review = Review.new
  	@reviews = Review.where(post_id: params[:id])
  	@current_point = Point.find_by(user_id: current_user.id)
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
    if current_user.id == @post.user_id
      @post.update(post_params)
      redirect_to post_path(params[:id])
    else
      redirect_to post_path(params[:id])
    end
  end

  def destroy
  	post = Post.find(params[:id])
  	post.destroy
  	redirect_to posts_path
  end


private
  def post_params
  	params.require(:post).permit(:title, :description, albums_images: [])
  end

end
