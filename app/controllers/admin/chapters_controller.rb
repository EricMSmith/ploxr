class Admin::ChaptersController < Admin::BaseController
	
	def index
	end

	def edit
		@chapter = Chapter.find(params[:id])
	end

	def update
	end

end