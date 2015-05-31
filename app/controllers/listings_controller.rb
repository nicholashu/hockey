class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy, :reserve]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.order("created_at desc")
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

 def reserve
      @listing = Listing.find(params[:id])
      @listing.update_attributes(:taken_by => current_user.id)
      respond_to do |format|
      format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
      format.json { render :show, status: :created, location: @listing }
    end
end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.set_user!(current_user)
    
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
        format.html { redirect_to @listing, notice: 'Listing was successfully taken.' }
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
      format.html { redirect_to @listing, notice: 'Listing was successfully destroyed.' }
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
      params.require(:listing).permit(:venue, :gamedate, :gametime, :taken_by, :group)
    end
end