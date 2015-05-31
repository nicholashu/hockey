class ProfileController < ApplicationController

  def index
    current_account = @current_account
   @listings = Listing.order("created_at desc")
  end

  def show
  	render :index
  end



end
