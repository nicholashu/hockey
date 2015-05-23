class ProfileController < ApplicationController

  def index
    current_account = @current_account
  end

  def show
  	render :index
  end

end
