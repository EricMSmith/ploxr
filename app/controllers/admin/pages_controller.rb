class Admin::PagesController < Admin::BaseController
	
	def index
	end

	def edit
		@page = Page.find(params[:id])
		@page_count = Chapter.find(@page.chapter_id).pages.size
	end

	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(page_params)
			flash[:success] = "Page updated"
			redirect_to admin_path
		else
			render 'edit'
		end
	end

	private

		def page_params
	    params.require(:page).permit(:title, :description, :filename, :position_in_chapter)
	  end
end