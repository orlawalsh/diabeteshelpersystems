class FoodlogsController < ApplicationController
	before_action :find_foodlog, only: [:show, :edit, :update, :destroy]

	def index
		@foodlogs = Foodlog.all.order("created_at DESC")
	end

	def show

	end

	def new
		@foodlog = current_user.foodlogs.build
	end

	def create
		@foodlog = current_user.foodlogs.build(foodlog_params)
		if @foodlog.save
			redirect_to @foodlog
		else
			render'new'
		end
	end

	def edit
	end

	def update
		if @foodlog.update(foodlog_params)
			redirect_to @foodlog
		else
			render 'edit'
		end
	end

	def destroy
		@foodlog.destroy
		redirect_to root_path
	end

	private 

	def foodlog_params
		params.require(:foodlog).permit(:date, :mealtype, :meal, :mood, :level)
	end

	def find_foodlog
		@foodlog = Foodlog.find(params[:id])
	end

end
