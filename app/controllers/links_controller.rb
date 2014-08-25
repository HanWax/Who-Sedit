class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end 

	def create
		@link = Link.new(params[:link].permit(:title, :url, :comment))
		@link.save
		redirect_to '/links'
	end 
end
