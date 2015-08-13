require 'test_helper'

class PortfolioImagesControllerTest < ActionController::TestCase
  setup do
    @portfolio_image = portfolio_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_image" do
    assert_difference('PortfolioImage.count') do
      post :create, portfolio_image: { portfolio_piece_id: @portfolio_image.portfolio_piece_id }
    end

    assert_redirected_to portfolio_image_path(assigns(:portfolio_image))
  end

  test "should show portfolio_image" do
    get :show, id: @portfolio_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_image
    assert_response :success
  end

  test "should update portfolio_image" do
    patch :update, id: @portfolio_image, portfolio_image: { portfolio_piece_id: @portfolio_image.portfolio_piece_id }
    assert_redirected_to portfolio_image_path(assigns(:portfolio_image))
  end

  test "should destroy portfolio_image" do
    assert_difference('PortfolioImage.count', -1) do
      delete :destroy, id: @portfolio_image
    end

    assert_redirected_to portfolio_images_path
  end
end
