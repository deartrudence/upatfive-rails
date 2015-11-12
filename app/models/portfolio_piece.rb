class PortfolioPiece < ActiveRecord::Base

    extend FriendlyId
    friendly_id :title, use: :slugged
    
	has_many :portfolio_images

	has_attached_file :feature_image
	validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/
end
