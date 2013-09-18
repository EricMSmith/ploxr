class Page < ActiveRecord::Base
	belongs_to 	:chapter
	validates		:title, 							presence: true
	validates		:description, 				presence: true
	validates		:filename, 						presence: true
	validates		:chapter_id, 					presence: true
	validates		:position_in_chapter, presence: true

	scope :next, lambda { |id| where("id > ?", id).order("id ASC") }
	scope :previous, lambda { |id| where("id < ?",id).order("id DESC") }
	# scope :opener, lambda { |chapter_id| where("chapter_id == ?", chapter_id).order("position_in_chapter ASC") }
	
	def next
    Page.next(self.id).first
  end

  def previous
    Page.previous(self.id).first
  end

  # def opener
  # 	Page.opener(self.chapter_id).first
  # end
end
