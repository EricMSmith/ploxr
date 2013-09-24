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

			describe "with invalid information" do
				before { click_button "Save changes" }

				it { should have_content('error') }
			end
		end
	end
end