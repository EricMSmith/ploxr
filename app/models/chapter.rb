class Chapter < ActiveRecord::Base
	belongs_to :book
	acts_as_list scope: :book
	acts_as_url :title, :sync_url => true

	has_many 	 :pages, -> { order(:position) }, dependent: :destroy

	validates	 :position,			presence: true
	validates  :title, 				presence: true
	validates  :description, 	presence: true
	validates  :book_id, 			presence: true

  def full_chapter_title
    "#{position}: #{title}"
  end

  def to_param
  	url
	end
end
