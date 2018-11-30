class Point < ApplicationRecord
	belongs_to :user

	def self.confirm_point_model_existence(user_id)
		unless Point.exists?(user_id: user_id)
			new_point_model = Point.new(user_id: user_id)
			new_point_model.save
		end
	end

	def self.token_exchanging(show_user_id, post_user_id)
		show_user = Point.find_by(user_id: show_user_id)
		update_show_user_token = show_user.token - 1
		show_user.update(token: update_show_user_token)
		post_user = Point.find_by(user_id: post_user_id)
		update_post_user_token = post_user.token + 1
		post_user.update(token: update_post_user_token)
	end

end
