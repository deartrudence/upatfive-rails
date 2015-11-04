class AdminController < ApplicationController

    def panel
        @portfolio_pieces = PortfolioPiece.all
        @blog_entries = BlogEntry.all
    end
end
