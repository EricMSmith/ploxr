class Page < ActiveRecord::Base
	belongs_to 	:chapter
	validates		:title, 							presence: true
	validates		:description, 				presence: true
	validates		:filename, 						presence: true
	validates		:chapter_id, 					presence: true
	validates		:position_in_chapter, presence: true

	scope :next, lambda { |id| where("id > ?", id).order("id ASC") }
	scope :previous, lambda { |id| where("id < ?",id).order("id DESC") }
		
	def next
    Page.next(self.id).first
  end

  def previous
    Page.previous(self.id).first
  end
end