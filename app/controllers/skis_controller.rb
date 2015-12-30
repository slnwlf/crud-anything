class SkisController < ApplicationController
	def index
		@skis = Ski.all

		render :index
	end
end
