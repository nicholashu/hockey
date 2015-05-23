class ReserveController < ApplicationController


		def reserve
			@listing = Listing.find(params[:id])
			@listing.update_attributes(taken_by: current_user.id)
		end

 end