class PortfolioImagesController < ApplicationController
  before_action :set_portfolio_image, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_images
  # GET /portfolio_images.json
  def index
    @portfolio_images = PortfolioImage.all.order(:order)
  end

  # GET /portfolio_images/1
  # GET /portfolio_images/1.json
  def show
  end

  # GET /portfolio_images/new
  def new
    @portfolio_piece = PortfolioPiece.find(params[:portfolio_piece_id])
    @portfolio_image = PortfolioImage.new
  end

  # GET /portfolio_images/1/edit
  def edit
    @portfolio_piece = PortfolioPiece.find(params[:portfolio_piece_id])
  end

  # POST /portfolio_images
  # POST /portfolio_images.json
  def create

    @portfolio_image = PortfolioImage.new(portfolio_image_params)
    @portfolio_image.portfolio_piece_id = params[:portfolio_piece_id]


    respond_to do |format|
      if @portfolio_image.save
        format.html { redirect_to @portfolio_image, notice: 'Portfolio image was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_image }
      else
        format.html { render :new }
        format.json { render json: @portfolio_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_images/1
  # PATCH/PUT /portfolio_images/1.json
  def update

    respond_to do |format|
      if @portfolio_image.update(portfolio_image_params)
        format.html { redirect_to @portfolio_image, notice: 'Portfolio image was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_image }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_images/1
  # DELETE /portfolio_images/1.json
  def destroy
    @portfolio_image.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_images_url, notice: 'Portfolio image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_image
      @portfolio_image = PortfolioImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_image_params
      params.require(:portfolio_image).permit(:portfolio_piece_id, :pic, :width, :order, :color)
    end
end
