module ApplicationHelper

	def full_title(page_title)
		base_title = "PLOX : By Steve Hamaker"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def s3_comic_path(filename)
		return "http://s3.amazonaws.com/ploxr/comic/#{filename}"
	end

	def s3_comic_tag(filename, options={})
  	image_tag(s3_comic_path(filename), options)
	end
end
