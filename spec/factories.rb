FactoryGirl.define do 
	factory :book do |f|
		f.title 	   "The Old Man and the Cheese"
		f.description  "Lorem Ipsum is the book description."
		f.blurb 	   "Sneaky Peaky is the blurb."
		f.author       "Herman Ernestway"
		f.author_about "Herman is the writer of Old Man and the Cheese."
	end

	# factory :chapter do |f|
	# 	f.title			"Constant Craving"
	# 	f.description	"Lorem Ipsum is the chapter description."
	# 	f.book_id		FactoryGirl.build(:book).id
	# 	f.position		""
	# 	f.url
	# end

	factory :user do |f|
		f.first_name { Faker::Name.first_name }
		f.last_name { Faker::Name.last_name }
		f.email { Faker::Internet.email }
		f.password "foobar"
		f.password_confirmation "foobar"
	end		
end