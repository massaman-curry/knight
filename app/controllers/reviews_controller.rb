class ReviewsController < ApplicationController
	def create
		post = Post.find(params[:post_id])
		@review = Review.new(review_params)
		@review.user_id = current_user.id
		@review.post_id = post.id
		@review.save
		if @review.save
	  		redirect_to post_path(post)
	  	else
	  		redirect_to post_path(post)
	  	end
	end

	def destroy
	end

 private
	def review_params
		params.require(:review).permit(:user_id, :post_id, :comment, :rating)
	end
end
