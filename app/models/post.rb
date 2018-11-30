class Post < ApplicationRecord

	default_scope -> { order(created_at: :desc) }
	# attachment :image
	belongs_to :user
	has_many :reviews
	has_many :albums, dependent: :destroy
		accepts_attachments_for :albums, attachment: :images

	validates :title, presence: true, length: { maximum: 30 }
	validates :description, presence: true, length: { maximum: 80 }
	validates :albums_images, presence: true


	def self.search(search)
		if search
			where("title like '%#{search}%'")
		else
			all
		end
	end


end
