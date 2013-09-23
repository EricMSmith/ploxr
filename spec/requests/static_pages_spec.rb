require 'spec_helper'

describe "Static pages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_title(full_title(page_title)) }

		it "should have the right links on the layout" do
	  	click_link "About"
	  	page.should have_title(full_title("About"))
	  	click_link "Subscribe"
	  	page.should have_xpath("//feed")
	  	# add external links (how?)
		end

		it "should have the book's title and blurb" do
			page.should have_content("#{Book.last.title}")
			page.should have_content("#{Book.last.blurb}")
		end

		# it "should have social share buttons" do
		# 	page.should have_css("span.st_facebook_large")
		# 	page.should have_css("span.st_twitter_large")
		# 	page.should have_css("span.st_tumblr_large")
		# 	page.should have_css("span.st_googleplus_large")
		# end
	end

	describe "Home page" do
		before { visit root_path }
		let(:page_title) { '' }
		it_should_behave_like "all static pages"

		it "should have the latest comic" do
			page.should have_xpath("//img[@src=\"http://s3.amazonaws.com/ploxr/comic/#{Page.last.filename}\"]")
		end

		it "should have an inactive 'next' button" do
			page.should have_css('img#next.inactive')
		end
	end

	describe "About page" do
		before { visit about_path }
		let(:page_title) { 'About' }
		it_should_behave_like "all static pages"
		it { should have_content(Book.last.title) }
		it { should have_content(Book.last.author) }
		it { should have_content(Book.last.author_about) }
		it { should have_content(Book.last.description) }
	end

	describe "Comic page" do
		before { visit page_path(2) }
		let(:page_title) { 'Chapter 1, Page 2' }
		it_should_behave_like "all static pages"

		it "should go to the previous comic when 'prev' button is clicked" do
			page_number = 2
			visit page_path(page_number)
			click_link('previous')
			page.should have_title(full_title('Chapter 1, Page ' + (page_number-1).to_s))
		end

		it "should go to the next comic when 'next' button is clicked" do
			page_number = 1
			visit page_path(page_number)
			click_link('next')
			page.should have_title(full_title('Chapter 1, Page ' + (page_number+1).to_s))
		end

		it "should go to the first page of a chapter when chapter number is clicked." do
			visit root_path
			click_link("2")
			page.should have_title(full_title('Chapter 2'))
			page.should have_xpath(
				   "//img[@src=\"http://s3.amazonaws.com/ploxr/comic/#{Chapter.find(2).pages.find_by_position_in_chapter(1).filename}\"]")
		end
	end

	describe "Subscribe page" do
		it "should have the most recent comic" do
			last_page = Page.last
			visit feed_path
			page.should have_content(page_path(last_page.id))
		end
	end
end
