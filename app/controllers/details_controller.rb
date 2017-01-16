class DetailsController < ApplicationController
	def create
		@foodlog = Foodlog.find(params[:foodlog_id])
		@detail = @foodlog.details.create(params[:detail].permit(:calories, :carbohydrates, :levels, :extra))

		redirect_to foodlog_path(@foodlog)
	end

end

