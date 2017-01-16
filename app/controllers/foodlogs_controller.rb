class FoodlogsController < ApplicationController
	before_action :find_foodlog, only: [:show, :edit, :update, :destroy]

	def index
		@foodlogs = Foodlog.all.order("created_at DESC")
	end

	def show

	end

	def new
		@foodlog = Foodlog.new
	end

	def create
		@foodlog = Foodlog.new(foodlog_params)
		if @foodlog.save
			redirect_to @foodlog
		else
			render'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private 

	def foodlog_params
		params.require(:foodlog).permit(:date, :mealtype, :meal, :mood, :level)
	end

	def find_foodlog
		@foodlog = Foodlog.find(params[:id])
	end

end
