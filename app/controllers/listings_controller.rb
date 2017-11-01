class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index

    if params[:sort].present?
      if params[:sort] == 'distance_ascending'
        @listings = Listing.near("#{current_user.suburb} #{current_user.state}", 8_000_000 , order: 'distance')
      elsif params[:sort] == 'distance_descending'
        @listings = Listing.near("#{current_user.suburb} #{current_user.state}", 8_000_000 , order: 'distance').reverse
      elsif params[:sort] == 'newest'
        @listings = Listing.all.reverse
      elsif params[:sort] == 'oldest'
        @listings = Listing.all
      elsif params[:sort] == 'price_ascending'
        @listings = Listing.order(price: :asc)
      elsif params[:sort] == 'price_descending'
        @listings = Listing.order(price: :desc)
      end
    else
      @listings = Listing.near("#{current_user.suburb} #{current_user.state}", 8_000_000 , order: 'distance')
    end

  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing.punch(request)
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:user_id, :start, :end, :price, :details, :suburb, :state)
    end
end
