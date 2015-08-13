require 'test_helper'

class PortfolioPiecesControllerTest < ActionController::TestCase
  setup do
    @portfolio_piece = portfolio_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_piece" do
    assert_difference('PortfolioPiece.count') do
      post :create, portfolio_piece: { client: @portfolio_piece.client, description: @portfolio_piece.description, excerpt: @portfolio_piece.excerpt, title: @portfolio_piece.title }
    end

    assert_redirected_to portfolio_piece_path(assigns(:portfolio_piece))
  end

  test "should show portfolio_piece" do
    get :show, id: @portfolio_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_piece
    assert_response :success
  end

  test "should update portfolio_piece" do
    patch :update, id: @portfolio_piece, portfolio_piece: { client: @portfolio_piece.client, description: @portfolio_piece.description, excerpt: @portfolio_piece.excerpt, title: @portfolio_piece.title }
    assert_redirected_to portfolio_piece_path(assigns(:portfolio_piece))
  end

  test "should destroy portfolio_piece" do
    assert_difference('PortfolioPiece.count', -1) do
      delete :destroy, id: @portfolio_piece
    end

    assert_redirected_to portfolio_pieces_path
  end
end
