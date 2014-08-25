class LinksController < ApplicationController

	before_action :authenticate_user!, except: [:index]

	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end 

	def create
		@link = Link.new(params[:link].permit(:title, :url, :comment))
		@link.save
		redirect_to '/'
	end 
end
