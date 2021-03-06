class Admin::ChaptersController < Admin::BaseController
	
	def index
	end

	def new
		@chapter = Chapter.new
		@chapter.position = Book.last.chapters.size + 1
	end

	def create
		@chapter = Chapter.new(chapter_params)
		@chapter.book_id = 1
		@chapter.title = "#{chapter_params[:name]}"
		if @chapter.save
			flash[:success] = "Chapter created!"
			redirect_to admin_path
		else
			render 'new'
		end
	end

	def edit
		@chapter = Chapter.find(params[:id])
	end

	def update
		@chapter = Chapter.find(params[:id])
		@chapter.title = "#{chapter_params[:name]}"
		if @chapter.update_attributes(chapter_params)
			flash[:success] = "Chapter updated"
			redirect_to admin_path
		else
			render 'edit'
		end
	end

	def destroy
		chapter = Chapter.find(params[:id])
		chapter.destroy
		flash[:success] = "Chapter deleted."
		redirect_to admin_path
	end

	private

		def chapter_params
			params.require(:chapter).permit(:title, :description, :position, :name)
		end
end