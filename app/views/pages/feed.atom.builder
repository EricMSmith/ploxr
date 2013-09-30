atom_feed :language => 'en-US' do |feed|
	feed.title @title
	feed.updated @updated

	@pages.each do |page|
		next if page.updated_at.blank?

		feed.entry( page ) do |entry|
			entry.title   "PLOX : Chapter #{Chapter.find(page.chapter_id).position}, Page #{page.position}"
			entry.content((link_to (image_tag page.image.url, alt: page.description), page_url(page)),type: "html")							

			#entry.updated(page.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))

		  entry.author do |author|
        author.name("Steve Hamaker")
      end
		end
	end
end

