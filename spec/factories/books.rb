FactoryGirl.define do 
	factory :book do |f|
		f.title 			 "The Old Man and the Cheese"
		f.description  "Lorem Ipsum is the description."
		f.blurb 			 "Sneaky Peaky is the blurb."
		f.author 			 "Herman Ernestway"
		f.author_about "Herman is the writer of Old Man and the Cheese."
	end	
end