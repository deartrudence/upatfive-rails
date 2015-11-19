class AddLinkToPortfolioPieces < ActiveRecord::Migration
  def change
  	add_column :portfolio_pieces, :link, :string
  end
end
