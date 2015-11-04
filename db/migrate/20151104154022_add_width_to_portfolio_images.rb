class AddWidthToPortfolioImages < ActiveRecord::Migration
  def change
    add_column :portfolio_images, :width, :string
  end
end
