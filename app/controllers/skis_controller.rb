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

		#whitelist params and save them to a variable
		ski_params = params.require(:ski).permit(:name, :description)

		#update the ski
		ski.update_attributes(ski_params)

		#redirect to show page for the updated pair of skis. 
		redirect_to ski_path(ski)
	end

	def edit
		ski_id = params[:id]
		#get ski ID and save it
		@ski = Ski.find_by_id(ski_id)
		#render the edit view
		render :edit
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

#rake routes
#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        skis#index
#     skis GET    /skis(.:format)          skis#index
#          POST   /skis(.:format)          skis#create
#  new_ski GET    /skis/new(.:format)      skis#new
# edit_ski GET    /skis/:id/edit(.:format) skis#edit
#      ski GET    /skis/:id(.:format)      skis#show
#          PATCH  /skis/:id(.:format)      skis#update
#          PUT    /skis/:id(.:format)      skis#update
#          DELETE /skis/:id(.:format)      skis#destroy
