class SkisController < ApplicationController
	def index
		@skis = Ski.all

		render :index
	end

	def show
		ski_id = params[:id]

		@ski = Ski.find_by_id(ski_id)

		render :show
	end

	def new
		@ski = Ski.new
		render :new
	end

	def update
		ski_id = params[:id]

		ski = Ski.find_by_id(ski_id)

		ski.update_attributes(ski_params)

		redirect_to ski_path(ski)
	end

	def destroy

		ski_id = params[:id]

		ski = Ski.find_by_id(ski_id)

		ski.destroy

		redirect_to ski_path(ski)
	end

	def create

		ski_params = params.require(:ski).permit(:name, :description)

		ski = Ski.new(ski_params)

		if ski.save
			redirect_to ski_path(ski)

		else 
			flash[:error] = ski.errors.full_messages.join(", ")
			redirect_to new_ski_path
		end
	end
end
