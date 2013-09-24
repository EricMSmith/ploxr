class Admin::BooksController < Admin::BaseController
	
	def index
		@book = Book.last
		@chapters = @book.chapters.all
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(params[book_params])
      flash[:success] = "Book updated"
      redirect_to admin_path
    else
      render 'edit'
    end
	end

	private

		def book_params
	    params.require(:book).permit(:title, :description, :author, :author_about)
	  end

end
