require 'spec_helper'

describe "Admin" do

	subject { page }

	describe "Book" do

		describe "edit" do
			before { visit edit_admin_book_path(1) }

			describe "page" do
				it { should have_content("Edit Book") }
				it { should have_title("Edit Book") }
				it { should have_link('Cancel', admin_path ) }
			end

			describe "with valid information" do
				before { click_button "Save changes" }

				it { should have_content('Book updated') }
			end

			describe "with invalid information" do
				before do
					fill_in "Title", 	with: ""
					click_button "Save changes"
				end
				
				it { should have_content('error') }
			end
		end
	end

	describe "Chapter" do

		describe "edit" do
			before { visit edit_admin_chapter_path(1) }

			describe "page" do
				it { should have_content("Edit Chapter") }
				it { should have_title("Edit Chapter") }
				it { should have_link('Cancel', admin_path ) }
			end

			describe "with valid information" do
				before { click_button "Save changes" }

				it { should have_content('Chapter updated') }
			end

			describe "with invalid information" do
				before do
					fill_in "Title", 	with: ""
					click_button "Save changes"
				end
				
				it { should have_content('error') }
			end
		end
	end

	describe "Page" do

		describe "edit" do
			before { visit edit_admin_page_path(1) }

			describe "page" do
				it { should have_content("Edit Page") }
				it { should have_title("Edit Page") }
				it { should have_link('Cancel', admin_path ) }
			end

			describe "with valid information" do
				before { click_button "Save changes" }

				it { should have_content('Page updated') }
			end

			describe "with invalid information" do
				before do
					fill_in "Title", 	with: ""
					click_button "Save changes"
				end
				
				it { should have_content('error') }
			end
		end
	end
end