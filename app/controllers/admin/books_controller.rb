class Admin::BooksController < Admin::BaseController
	
	def index
		@book = Book.last
		@chapters = @book.chapters.all
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
	end

end
