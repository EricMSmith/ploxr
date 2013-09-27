class StaticPagesController < ApplicationController
  
  def home
    @page = Page.find(Book.last.chapters.last.pages.last.id)
    @chapters = Chapter.all.order("position ASC")
    @chapter = Chapter.find_by(id: @page.chapter_id)
  end

  def about
  	@book = Book.last
  end  
end
