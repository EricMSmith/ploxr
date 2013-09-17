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

Steve works as freelance colorist and illustrator in Columbus, Ohio with his wife and son.')

Chapter.create(title: 'Chad',
				 description: 'Chad, a demanding guild leader, may have just pushed his online friends too far.',
				     book_id: 1)

Chapter.create(title: 'Roy',
				 description: 'Roy gets some bad news about his friend, Chad.',
				     book_id: 1)

Page.create(	 title: '1-1',
				 description: 'The Columbus skyline, Chad at home.',
						filename: '1-1.jpg',
					chapter_id:	1,)

Page.create(	 title: '1-2',
				 description: 'Chad prepares his guild for a raid.',
						filename: '1-2.jpg',
					chapter_id:	1,)	

Page.create(	 title: '1-3',
				 description: 'Chad continues to prepare his guild for a raid.',
						filename: '1-3.jpg',
					chapter_id:	1,)	

Page.create(	 title: '1-4',
				 description: 'Chad berates his guild leader, Kim.',
						filename: '1-4.jpg',
					chapter_id:	1,)	

Page.create(	 title: '1-5',
				 description: 'Chad goes afk for dinner.',
						filename: '1-5.jpg',
					chapter_id:	1,)	

Page.create(	 title: '1-6',
				 description: 'Kim tries to explain her next action to Chad, but he\'s not there.',
						filename: '1-6.jpg',
					chapter_id:	1,)	

Page.create(	 title: '1-7',
				 description: 'Chad is out of the guild and he doesn\'t even know it yet',
						filename: '1-7.jpg',
					chapter_id:	1,)

Page.create(	 title: '1-8',
				 description: 'Chad\'s next burrito will be his first as a guildless player.',
						filename: '1-8.jpg',
					chapter_id:	1,)

Page.create(	 title: '2-1',
				 description: 'Roy snoozes at home.',
						filename: '2-1.jpg',
					chapter_id:	2,)

Page.create(	 title: '2-2',
				 description: 'Roy wakes up to Mystery Science Theater 3000: Final Justice. Joe Don Baker makes him laugh.',
						filename: '2-2.jpg',
					chapter_id:	2,)																															   
