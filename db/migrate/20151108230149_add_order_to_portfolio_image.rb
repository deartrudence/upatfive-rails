class AddOrderToPortfolioImage < ActiveRecord::Migration
  def change
    add_column :portfolio_images, :order, :integer
  end
end
