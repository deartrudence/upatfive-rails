class CreatePortfolioPieces < ActiveRecord::Migration
  def change
    create_table :portfolio_pieces do |t|
      t.string :title
      t.string :excerpt
      t.text :description
      t.string :client

      t.timestamps null: false
    end
  end
end
