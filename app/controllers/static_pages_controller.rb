class StaticPagesController < ApplicationController
  
  def home
    @page = Page.last
    @chapters = Chapter.all
  end

  def subscribe
  end

  def about
  	if params[:id] == nil
  		@book = Book.last
  	else
  		@book = Book.find(params[:id])
  	end
  end  
end
