class Picture < ApplicationRecord
	belongs_to :post
	has_attached_file :image,
		:path => ":attachment/:id/:style.:extension",
		styles: { medium: "500x500>", thumb: "300x300!" },
		default_url: "/images/:style/missing.png"
		
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ #
end
