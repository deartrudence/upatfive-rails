class AddOrderToPortfolioPiece < ActiveRecord::Migration
  def change
    add_column :portfolio_pieces, :order, :integer
  end
end
