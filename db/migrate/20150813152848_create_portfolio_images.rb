class CreatePortfolioImages < ActiveRecord::Migration
  def change
    create_table :portfolio_images do |t|
      t.references :portfolio_piece, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
