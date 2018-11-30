class Review < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validate :post_too_many_comments
	attr_accessor :current_user

	def post_too_many_comments
		reviews = Review.where(post_id: post_id)
		if reviews.exists?(user_id: user_id)
			errors.add(:comment, "投稿できません")
		end
	end

end
