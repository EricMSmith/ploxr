class Chapter < ActiveRecord::Base
	belongs_to :book
	has_many 	 :pages, dependent: :destroy
	validates  :title, 				presence: true
	validates  :description, 	presence: true
	validates  :book_id, 			presence: true

  def full_chapter_title
    "#{id}: #{title}"
  end
end
