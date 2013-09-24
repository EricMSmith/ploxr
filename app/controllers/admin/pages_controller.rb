class Admin::PagesController < Admin::BaseController
	
	def index
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
	end

end