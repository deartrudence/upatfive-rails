class PortfolioImage < ActiveRecord::Base
  WIDTH = [ 'col-half', 'col-full']
  belongs_to :portfolio_piece

  has_attached_file :pic
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
end
