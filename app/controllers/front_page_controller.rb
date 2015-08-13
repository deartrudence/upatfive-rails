class FrontPageController < ApplicationController

	def show
		@portfolio_piece = PortfolioPiece.last
		@blog_entry = BlogEntry.last
		
	end
end
