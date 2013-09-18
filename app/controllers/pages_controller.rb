class PagesController < ApplicationController

	def show
		@chapters = Chapter.all
		@page = Page.find(params[:id])



		# chapter = Chapter.find(params[:chapter_id])
		# chapter_pages = chapter.pages.order("position_in_chapter")
		# position = params[:position_in_chapter]	
		# chapter_pages.each do |cp|
		# 	if cp.position_in_chapter == position.to_i
		# 		@page = cp
		# 	end
		# end
		# if !@page
		# 	redirect_to root_path
		# end

	end
end