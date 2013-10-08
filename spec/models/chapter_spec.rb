require 'spec_helper'

describe Chapter do


  let(:book) { FactoryGirl.build(:book) }

  before do
  	@chapter = book.chapters.build( title: "The Storm", 
  						 			  				description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
  end

  subject { @chapter }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:book_id) }
  it { should respond_to(:book) }
  its(:book) { should eq book }

  it { should be_valid }

   describe "when title is not present" do
  	before { @chapter.title = nil }
  	it { should_not be_valid }
  end

  describe "when description is not present" do
  	before { @chapter.description = nil }
  	it { should_not be_valid }
  end

  describe "when book_id is not present" do
  	before { @chapter.book_id = nil }
  	it { should_not be_valid }
  end
end
