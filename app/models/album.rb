class Album < ApplicationRecord
	belongs_to :post
	attachment :images
	# belongs_toの方はモデル、attachmentの方は、Albumモデルの中の、imagesカラムの話。
end
