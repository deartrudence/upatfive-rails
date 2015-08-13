class AddImageToPortfolioImage < ActiveRecord::Migration
  def change
  	add_attachment :portfolio_images, :pic
  end
end
