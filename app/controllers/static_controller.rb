class StaticController < ApplicationController
skip_before_filter :authenticate_user!
	def index
	end

	def show
		render :index
	end
	
end
