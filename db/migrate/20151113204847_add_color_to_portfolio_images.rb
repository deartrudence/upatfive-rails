class AddColorToPortfolioImages < ActiveRecord::Migration
  def change
    add_column :portfolio_images, :color, :string
  end
end
