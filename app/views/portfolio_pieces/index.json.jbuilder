json.array!(@portfolio_pieces) do |portfolio_piece|
  json.extract! portfolio_piece, :id, :title, :excerpt, :description, :client
  json.url portfolio_piece_url(portfolio_piece, format: :json)
end
