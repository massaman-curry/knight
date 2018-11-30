class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@posts = Post.where(user_id: params[:id])
  end

  def edit
  	@user = User.find(current_user.id)
  	@posts = Post.where(user_id: current_user.id)
  end

  def update
  	@user = User.find(current_user.id)
  	@user.update(user_params)
  	redirect_to user_path(current_user.id)
  end

  private
   def user_params
   	params.require(:user).permit(:name, :image, :remove_image, :profile, :point)
   end
end
