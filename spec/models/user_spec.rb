require 'spec_helper'
require 'faker'

describe User do
  
  it "has a valid factory" do
  	FactoryGirl.create(:user).should be_valid
  end
	
	it "is invalid without a first name" do
		FactoryGirl.build(:user, first_name: nil).should_not be_valid
	end

	it "is invalid without a last name" do
		FactoryGirl.build(:user, last_name: nil).should_not be_valid
	end

	it "is invalid without an email" do
		FactoryGirl.build(:user, email: nil).should_not be_valid
	end

	it "returns the user's full name as a string" do
		user = FactoryGirl.create(:user, first_name: "Bob", last_name: "Marley")
		user.full_name.should == "Bob Marley"
	end
end
