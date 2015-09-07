class PortfolioPiece < ActiveRecord::Base

	has_many :portfolio_images

	has_attached_file :feature_image
	validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/
end
