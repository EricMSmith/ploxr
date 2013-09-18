class Chapter < ActiveRecord::Base
	belongs_to :book
	has_many 	 :pages
	validates  :title, 				presence: true
	validates  :description, 	presence: true
	validates  :book_id, 			presence: true

end
