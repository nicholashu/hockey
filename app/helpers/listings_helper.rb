module ListingsHelper

	def users_name(user)
	  	name  = User.find(user)
		name = name.name  	
  	end

  	#
	def user_info(user)
	  	user  = User.find(user)
  	end

	  def assign_job(user)
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

end
