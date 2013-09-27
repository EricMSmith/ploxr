class Page < ActiveRecord::Base
	belongs_to 	:chapter
	validates		:title, 							presence: true
	validates		:description, 				presence: true
	validates		:chapter_id, 					presence: true
	validates		:position_in_chapter, presence: true

	scope :next, lambda { |id| where("id > ?", id).order("id ASC") }
	scope :previous, lambda { |id| where("id < ?",id).order("id DESC") }
	
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

	def next
    Page.next(self.id).first
  end

  def previous
    Page.previous(self.id).first
  end

  private
  
	  def position_scope
	    "pages.chapter_id = #{chapter_id.to_i}"
	  end
end
