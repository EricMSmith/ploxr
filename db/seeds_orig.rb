# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(title: 				'Hell Is Other Players',
						description: 	'You spent so much time playing that online game, you not only mastered it, you were master over the other players. You were powerful. They praised you, they needed you, or at least, you thought they did. Guess you were wrong. So, what do you do now that the virtual world you dedicated your life to got unplugged and ripped away?

Set against the Midwest paradigm of Columbus, Ohio, PLOX is the story of Chad, the raid leader with no patience, Roy, the rational one that would rather play with dice and paper, and Kim, the guild leader at the end of her rope.

Without irony or prejudice, PLOX celebrates the subculture of gaming - video, card, and tabletop - while exploring how the shroud of internet anonymity changes our real world relationships and identities.',
						author:  			'Steve Hamaker',
						author_about: 'Steve Hamaker is the Eisner and Harvey Award nominated colorist of the BONE graphic novels published by Scholastic. 

In 2005 Steve self-published Fish N Chips Volume 1, and has contributed several stories to the anthology series, Flight.

Steve works as freelance colorist and illustrator in Columbus, Ohio with his wife and son.',
						blurb: 'What do you do when the virtual world you dedicated your life to gets unplugged and ripped away? PLOX is the online graphic novel that tells the story of Chad, the raid leader with no patience, Roy, the rational one that would rather play with dice and paper, and Kim, the guild leader at the end of her rope.
					
When the games we play forge our identity, hell is other players.')

Chapter.create(title: 'Chad',
				 description: 'Chad, a demanding guild leader, may have just pushed his online friends too far.',
				     book_id: 1)

Chapter.create(title: 'Roy',
				 description: 'Roy gets some bad news about his friend, Chad.',
				     book_id: 1)

Chapter.create(title: 'The Calm',
				 description: 'Chad explains the finer points of guild raiding before getting some bad news.',
				     book_id: 1)

Chapter.create(title: 'The Storm',
				 description: 'Roy finds out just how bad Chad is taking being fired from the guild.',
				     book_id: 1)

Chapter.create(title: 'Kim',
				 description: 'Kim\'s relationship is headed for a major change.',
				     book_id: 1)

Page.create(	 title: '1-1',
				 description: 'The Columbus skyline, Chad at home.',
						filename: '1-1.jpg',
					chapter_id:	1,
 position_in_chapter: 1)

Page.create(	 title: '1-2',
				 description: 'Chad prepares his guild for a raid.',
						filename: '1-2.jpg',
					chapter_id:	1,
 position_in_chapter: 2)	

Page.create(	 title: '1-3',
				 description: 'Chad continues to prepare his guild for a raid.',
						filename: '1-3.jpg',
					chapter_id:	1,
 position_in_chapter: 3)	

Page.create(	 title: '1-4',
				 description: 'Chad berates his guild leader, Kim.',
						filename: '1-4.jpg',
					chapter_id:	1,
 position_in_chapter: 4)		

Page.create(	 title: '1-5',
				 description: 'Chad goes afk for dinner.',
						filename: '1-5.jpg',
					chapter_id:	1,
 position_in_chapter: 5)		

Page.create(	 title: '1-6',
				 description: 'Kim tries to explain her next action to Chad, but he\'s not there.',
						filename: '1-6.jpg',
					chapter_id:	1,
 position_in_chapter: 6)	

Page.create(	 title: '1-7',
				 description: 'Chad is out of the guild and he doesn\'t even know it yet',
						filename: '1-7.jpg',
					chapter_id:	1,
 position_in_chapter: 7)	

Page.create(	 title: '1-8',
				 description: 'Chad\'s next burrito will be his first as a guildless player.',
						filename: '1-8.jpg',
					chapter_id:	1,
 position_in_chapter: 8)	

Page.create(	 title: '2-1',
				 description: 'Roy snoozes at home.',
						filename: '2-1.jpg',
					chapter_id:	2,
 position_in_chapter: 1)	

Page.create(	 title: '2-2',
				 description: 'Roy wakes up to Mystery Science Theater 3000: Final Justice. Joe Don Baker makes him laugh.',
						filename: '2-2.jpg',
					chapter_id:	2,
 position_in_chapter: 2)

Page.create(	 title: '2-3',
				 description: 'Roy learns of Chad\'s fate in the guild.',
						filename: '2-3.jpg',
					chapter_id:	2,
 position_in_chapter: 3)

Page.create(	 title: '2-4',
				 description: 'Roy can\'t believe the way Kim let Chad go.',
						filename: '2-4.jpg',
					chapter_id:	2,
 position_in_chapter: 4)

Page.create(	 title: '2-5',
				 description: 'Roy heads off to break the news to Chad.',
						filename: '2-5.jpg',
					chapter_id:	2,
 position_in_chapter: 5)

Page.create(	 title: '3-1',
				 description: 'Chad is at his favorite bar talking to Carmen, the bartender.',
						filename: '3-1.jpg',
					chapter_id:	3,
 position_in_chapter: 1)

Page.create(	 title: '3-2',
				 description: 'Chad begins explaining the art of raiding.',
						filename: '3-2.jpg',
					chapter_id:	3,
 position_in_chapter: 2)

Page.create(	 title: '3-3',
				 description: 'Chad continues talking to Carmen.',
						filename: '3-3.jpg',
					chapter_id:	3,
 position_in_chapter: 3)

Page.create(	 title: '3-4',
				 description: 'Chad and Carmen discuss gaming.',
						filename: '3-4.jpg',
					chapter_id:	3,
 position_in_chapter: 4)

Page.create(	 title: '3-5',
				 description: 'Chad uses his food as an object lesson for explaining raiding.',
						filename: '3-5.jpg',
					chapter_id:	3,
 position_in_chapter: 5)

Page.create(	 title: '3-6',
				 description: 'Ketchup comes into play in Chad\'s demonstration.',
						filename: '3-6.jpg',
					chapter_id:	3,
 position_in_chapter: 6)

Page.create(	 title: '3-7',
				 description: 'Just in time, Chad is interrupted.',
						filename: '3-7.jpg',
					chapter_id:	3,
 position_in_chapter: 7)

Page.create(	 title: '3-8',
				 description: 'Roy joins Chad at the bar.',
						filename: '3-8.jpg',
					chapter_id:	3,
 position_in_chapter: 8)

Page.create(	 title: '3-9',
				 description: 'Roy relives his Street Fighter glory days.',
						filename: '3-9.jpg',
					chapter_id:	3,
 position_in_chapter: 9)

Page.create(	 title: '3-10',
				 description: 'Roy begins to deliver the bad news to Chad.',
						filename: '3-10.jpg',
					chapter_id:	3,
 position_in_chapter: 10)

Page.create(	 title: '3-11',
				 description: 'Chad races home to see what happened to his guild.',
						filename: '3-11.jpg',
					chapter_id:	3,
 position_in_chapter: 11)

Page.create(	 title: '3-12',
				 description: 'Roy stays and finishes his beer.',
						filename: '3-12.jpg',
					chapter_id:	3,
 position_in_chapter: 12)

Page.create(	 title: '4-1',
				 description: 'Chapter 4: The Storm',
						filename: '4-1.jpg',
					chapter_id:	4,
 position_in_chapter: 1)

Page.create(	 title: '4-2',
				 description: 'Roy finds computer equipment flying from Chad\'s window.',
						filename: '4-2.jpg',
					chapter_id:	4,
 position_in_chapter: 2)

Page.create(	 title: '4-3',
				 description: 'Roy finds Chad in his darkened computer room.',
						filename: '4-3.jpg',
					chapter_id:	4,
 position_in_chapter: 3)

Page.create(	 title: '4-4',
				 description: 'Roy and Chad talk about their gaming future.',
						filename: '4-4.jpg',
					chapter_id:	4,
 position_in_chapter: 4)

Page.create(	 title: '4-5',
				 description: 'Chad schemes to get revenge.',
						filename: '4-5.jpg',
					chapter_id:	4,
 position_in_chapter: 5)

Page.create(	 title: '5-1',
				 description: 'Chapter 5: The Kim',
						filename: '5-1.jpg',
					chapter_id:	5,
 position_in_chapter: 1)

Page.create(	 title: '5-2',
				 description: 'Kim meets her girlfriend at a coffee shop.',
						filename: '5-2.jpg',
					chapter_id:	5,
 position_in_chapter: 2)


Page.create(	 title: '5-3',
				 description: 'Kim\'s girlfriend needs a change.',
						filename: '5-3.jpg',
					chapter_id:	5,
 position_in_chapter: 3)


Page.create(	 title: '5-4',
				 description: 'Kim\'s girlfriend breaks it off.',
						filename: '5-4.jpg',
					chapter_id:	5,
 position_in_chapter: 4)


