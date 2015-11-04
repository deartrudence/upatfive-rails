class FrontPageController < ApplicationController

	def show
		@portfolio_pieces = PortfolioPiece.all		
	end
end
