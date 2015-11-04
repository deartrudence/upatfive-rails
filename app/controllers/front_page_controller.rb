class FrontPageController < ApplicationController
    skip_before_action :authenticate_user!
	def show
		@portfolio_pieces = PortfolioPiece.all		
	end
end
