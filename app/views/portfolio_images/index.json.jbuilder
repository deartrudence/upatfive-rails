json.array!(@portfolio_images) do |portfolio_image|
  json.extract! portfolio_image, :id, :portfolio_piece_id
  json.url portfolio_image_url(portfolio_image, format: :json)
end
