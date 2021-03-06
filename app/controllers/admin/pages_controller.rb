class Admin::PagesController < Admin::BaseController
	
	def new
		@page = Page.new
		@chapter = Chapter.find(params[:chapter_id])
		@page.chapter_id = @chapter.id
		@page.position = @chapter.pages.size + 1
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			flash[:success] = "Page created!"
			redirect_to admin_path
		else
			render 'new'
		end
	end

	def edit
		@page = Page.find(params[:id])
		@page_count = Chapter.find(@page.chapter_id).pages.size
		@chapter = Chapter.find(@page.chapter_id)
	end

	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(page_params)
			flash[:success] = "Page updated."
			redirect_to admin_path
		else
			render 'edit'
		end
	end

	def destroy
		page = Page.find(params[:id])
		page.destroy
		flash[:success] = "Page deleted."
		redirect_to admin_path
	end

	private

		def page_params
	    params.require(:page).permit(:title, :description, :image, :position, :chapter_id)
	  end
end