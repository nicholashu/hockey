class GroupsController < ApplicationController

	def create
	    @group = Group.new(listing_params)
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



  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:groupname)
    end
end
