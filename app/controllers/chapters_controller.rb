class ChaptersController < ApplicationController

	def show
		@chapters = Chapter.all
		@page = Chapter.find(params[:id]).pages.order("position_in_chapter ASC").first
	end
end
