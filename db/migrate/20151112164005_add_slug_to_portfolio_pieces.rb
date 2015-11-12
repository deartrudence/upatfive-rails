class AddSlugToPortfolioPieces < ActiveRecord::Migration
  def change
    add_column :portfolio_pieces, :slug, :string
    add_index :portfolio_pieces, :slug, unique: true
  end
end
