class ChaptersController < ApplicationController

	def show
		@chapters = Book.last.chapters.order("position ASC")
		@page = Chapter.find_by_url(params[:id]).pages.order("position ASC").first
		@chapter = Chapter.find_by(id: @page.chapter_id)
	end
end
