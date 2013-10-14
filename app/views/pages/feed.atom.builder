atom_feed :language => 'en-US' do |feed|
	feed.title @title
	feed.updated @updated

	@pages.each do |page|
			next if page.updated_at.blank?

			feed.entry( page ) do |entry|
					entry.title   "Chapter #{ Chapter.find(page.chapter_id).position }, 
					               Page #{ page.position }: #{ page.title }"
					entry.content((link_to (image_tag page.image.url(:thumb), alt: page.description), 
	                      page_url(page)) +

		                    simple_format("\n") +

												 link_to(page.description, page_url(page)),
												 type: "html")					

				  entry.author do |author|
		        author.name("Steve Hamaker")
		      end
			end

	end
end

