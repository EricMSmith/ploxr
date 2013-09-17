require 'spec_helper'

describe "Static pages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_title(full_title(page_title)) }
	end

	describe "Home page" do
		before { visit root_path }
		let(:page_title) { '' }
		it_should_behave_like "all static pages"
		it { should have_content("1") }
		it { should have_content("prev.png") }
		it { should have_content(".jpg") }
	end

	describe "About page" do
		before { visit about_path }
		let(:page_title) { 'About' }
		it_should_behave_like "all static pages"
		it { should have_content("About the comic") }
		it { should have_content("About Steve") }
		it { should have_content("Eisner and Harvey Award") }
		it { should have_content("You spent so much time")}
	end
end
