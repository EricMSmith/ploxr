class PagesController < ApplicationController

	def show
		@chapters = Chapter.all
		@page = Page.find(params[:id])
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