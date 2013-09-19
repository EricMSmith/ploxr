class PagesController < ApplicationController

	def show
		@chapters = Chapter.all
		@page = Page.find(params[:id])
	end
end