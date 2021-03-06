class WeedsController < ApplicationController

	before_action :find_weed, only: [:show, :edit, :update, :destroy]

	def index
		@weeds = Weed.all
	end

	def show
		@suggested_first = Weed.limit(1).offset(1).first
		@suggested_second = Weed.limit(1).offset(2).first
		@suggested_third = Weed.limit(1).offset(3).first
	end

	def new
		@weed = Weed.new
	end

	def create
		@weed = Weed.new(weed_params)
		if @weed.save
			redirect_to root_path, notice: 'Strain added to inventory'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @weed.update(weed_params)
			redirect_to weed_path(@weed), notice: 'Strain has been updated'
		else
			render 'edit'
		end
	end

	def destroy
		@weed.destroy
		redirect_to root_path, notice: 'Strain has been removed'
	end

	private

	def find_weed
		@weed = Weed.find(params[:id])
	end

	def weed_params
		params.require(:weed).permit(:name, :description, :price, :allergies, :ingredients, :strength, :thc, :mood, :image)
	end

end
