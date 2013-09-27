class Book < ActiveRecord::Base
	has_many  :chapters
	validates :title, 				presence: true
	validates :description, 	presence: true
	validates :blurb,					presence: true
	validates :author, 				presence: true
	validates :author_about,	presence: true

	has_attached_file :cover, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
