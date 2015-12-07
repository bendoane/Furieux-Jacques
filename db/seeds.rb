# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Note.create(title: 'First Note', body: "It's full of wonder.", tags: (name: 'cool', name: 'nifty', name: 'neato'))
Note.create(title: 'This second Note', body: "Wow. So amaze. Much text.", tags: (name: 'wow', name: 'amaze', name: 'doge'))
Note.create(title: "This third one", body: "But dat text doh, u kno?", tags: (name: "bruh", name: "bro", name: "dude"))
Note.create(title: "Fourth Meal", body: "One chicken cheesy gordita crunch", tags:(name: "yum", name: "taco_bell", name: "amaze"))
Note.create(title: "Fifth Wheel" body: "Nobody likes me. Everybody hates me. I'll eat dirt", tags: (name:"sad", name:"forever_alone", name:"boohoo"))
