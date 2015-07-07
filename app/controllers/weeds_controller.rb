class WeedsController < ApplicationController

	before_action :find_weed, only: [:show, :edit, :update, :destroy]
	
	def index
		@weeds = Weed.all
	end

	def new
		@weed = Weed.new
	end

	def create
		@weed = Weed.new(weed_params)
		if @weed.save
			redirect_to root_path, notice: 'Weed added to inventory'
		else
			render 'new'
		end
	end

	private

	def find_weed
		@weed = Weed.find(params[:id])
	end

	def weed_params
		params.require(:weed).permit(:name, :description, :price, :type, :weight, :mood)
	end

end
