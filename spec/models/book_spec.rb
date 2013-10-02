require 'spec_helper'

describe Book do
  
  it "has a valid factory" do
    FactoryGirl.create(:book).should be_valid
  end

  it "is invalid without a title" do
    FactoryGirl.build(:book, title: nil).should_not be_valid
  end

  it "is invalid without a description" do
    FactoryGirl.build(:book, description: nil).should_not be_valid
  end
end
