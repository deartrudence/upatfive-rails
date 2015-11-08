class AdminController < ApplicationController

    def panel
        @portfolio_pieces = PortfolioPiece.all.order(:order)
        @blog_entries = BlogEntry.all
    end
end
