class Admin::BooksController < Admin::BaseController
	
	def index
		@book = Book.first
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(book_params)
      flash[:success] = "Book updated"
      redirect_to admin_path
    else
      render 'edit'
    end
	end

	private

		def book_params
	    params.require(:book).permit(:title, :description, :blurb, :author, :author_about, :cover)
	  end

end
