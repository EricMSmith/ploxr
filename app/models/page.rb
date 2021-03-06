class Page < ActiveRecord::Base
	belongs_to 	:chapter
	acts_as_list scope: :chapter
	acts_as_url :title, :sync_url => true
	validates	  :position,						presence: true
	validates		:title, 							presence: true
	validates		:description, 				presence: true
	validates		:chapter_id, 					presence: true
	
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  def to_param
  	url
	end
end
