class Chapter < ActiveRecord::Base
	belongs_to :book
	acts_as_list scope: :book

	has_many 	 :pages, dependent: :destroy, order: :position

	validates	 :position,			presence: true
	validates  :title, 				presence: true
	validates  :description, 	presence: true
	validates  :book_id, 			presence: true

  def full_chapter_title
    "#{position}: #{title}"
  end
end
