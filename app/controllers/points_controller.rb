class PointsController < ApplicationController

	def update
		Point.confirm_point_model_existence(current_user.id)
		# Point.token_exchanging(current_user.id, params[:point][:post_user_id])
		Point.token_exchanging(current_user.id, params[:post_user_id])

	end


	private

end
