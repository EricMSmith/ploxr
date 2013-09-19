class StaticPagesController < ApplicationController
  
  def home
    @page = Page.last
    @chapters = Chapter.all
  end

  def about
  	@book = Book.last
  end  
end
