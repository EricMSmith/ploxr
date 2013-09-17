class Book < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :author, presence: true
	validates :author_about, presence: true
end
