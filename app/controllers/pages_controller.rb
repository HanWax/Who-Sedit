class PagesController < ApplicationController
	def index
		@posts = Post.all
		@links = Link.all
	end
end
