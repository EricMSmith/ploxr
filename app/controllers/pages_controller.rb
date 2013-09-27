class PagesController < ApplicationController

	def show
		@chapters = Book.last.chapters.order("position ASC")
		@page = Page.find(params[:id])
		@chapter = Chapter.find_by(id: @page.chapter_id)
	end

	def index
		@user = current_user
	end

	def feed
		@title = "PLOX : By Steve Hamaker"
		@pages = Page.order("updated_at desc")
		@updated = @pages.first.updated_at unless @pages.empty?
		respond_to do |format|
			format.atom { render :layout => false }
			format.rss { redirect_to feed_path(:format => :atom),
									 :status => :moved_permanently }
		end
	end
end