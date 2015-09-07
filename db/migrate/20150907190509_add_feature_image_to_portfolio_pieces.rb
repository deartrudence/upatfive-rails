class AddFeatureImageToPortfolioPieces < ActiveRecord::Migration
  def change
  	add_attachment :portfolio_pieces, :feature_image
  end
end
