class Page < ActiveRecord::Base
	belongs_to 	:chapter
	validates		:title, 			presence: true
	validates		:description, presence: true
	validates		:filename, 		presence: true
	validates		:chapter_id, 	presence: true
end
