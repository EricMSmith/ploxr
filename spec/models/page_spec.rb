require 'spec_helper'

describe Page do
  
  let(:chapter) { Chapter.create(		title: "The Storm", 
  									 					description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
																			 id: 2) }
  before do
  	@page = chapter.pages.build( 		title: "2-1", 
  						 			  				description: "Culpa qui officia deserunt mollit anim id est laborum",
  															 filename: "sampleimage.jpg",
                      position_in_chapter: 3)
	end

	subject { @page }

	it { should respond_to(:title) }
	it { should respond_to(:description) }
	it { should respond_to(:filename) }
	it { should respond_to(:chapter_id) }
  it { should respond_to(:position_in_chapter) }

	it { should be_valid }

	describe "when title is not present" do
  	before { @page.title = nil }
  	it { should_not be_valid }
  end

  describe "when description is not present" do
  	before { @page.description = nil }
  	it { should_not be_valid }
  end

  describe "when chapter_id is not present" do
  	before { @page.chapter_id = nil }
  	it { should_not be_valid }
  end

  describe "when filename is not present" do
  	before { @page.filename = nil }
  	it { should_not be_valid }
  end
end
