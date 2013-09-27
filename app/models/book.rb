class Book < ActiveRecord::Base
	has_many  :chapters
	validates :title, 				presence: true
	validates :description, 	presence: true
	validates :blurb,					presence: true
	validates :author, 				presence: true
	validates :author_about,	presence: true


end
