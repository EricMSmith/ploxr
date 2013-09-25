class Admin::ChaptersController < Admin::BaseController
	
	def index
	end

	def edit
		@chapter = Chapter.find(params[:id])
	end

	def update
		@chapter = Chapter.find(params[:id])
		if @chapter.update_attributes(chapter_params)
			flash[:success] = "Chapter updated"
			redirect_to admin_path
		else
			render 'edit'
		end
	end

	private

		def chapter_params
			params.require(:chapter).permit(:title, :description)
		end
end