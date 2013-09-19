atom_feed :language => 'en-US' do |feed|
	feed.title @title
	feed.updated @updated

	@pages.each do |page|
		next if page.updated_at.blank?

		feed.entry( page ) do |entry|
			entry.url     page_url(page)
			entry.title   "PLOX : Chapter #{page.chapter_id}, Page #{page.position_in_chapter}"
			entry.content (link_to s3_comic_tag(page.filename, alt: page.description), 
									  page_url(page)), type: 'html'							

			entry.updated(page.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))

		  entry.author do |author|
        author.name("Steve Hamaker")
      end
		end
	end
end

