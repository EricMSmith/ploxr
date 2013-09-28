class PagesController < ApplicationController

	def show
		@chapters = Book.last.chapters.order("position ASC")
		@page = Page.find_by_url(params[:id])
		@chapter = Chapter.find_by(id: @page.chapter_id)
	end

	def index
		@user = current_user
	end

	def feed
		@title = "PLOX : By Steve Hamaker"
		@chapters = Chapter.order("position DESC")

		@pages = Array.new
		@chapters.each do |chapter|
			@pages += chapter.pages.order("position DESC")
		end
		
		@updated = @pages.first.updated_at unless @pages.empty?
		respond_to do |format|
			format.atom { render :layout => false }
			format.rss { redirect_to feed_path(:format => :atom),
									 :status => :moved_permanently }
		end
	end
end