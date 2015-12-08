# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

note = Note.create!(title: 'First Note', body: "It's full of wonder.")
['cool', 'nifty', 'neato'].each do |word|
  note.tags << Tag.new(:name => word)
end
note = Note.create!(title: 'This second Note', body: "Wow. So amaze. Much text.")
["wow","amaze","doge"].each do |word|
  note.tags << Tag.new(name: word)
end
note = Note.create!(title: "This third one", body: "But dat text doh, u kno?")
["bruh","bro","dude"].each do |word|
  note.tags << Tag.new(name: word)
end
note = Note.create!(title: "Fourth Meal", body: "One chicken cheesy gordita crunch")
["yum","taco_bell","amaze"].each do |word|
  note.tags << Tag.new(name: word)
end
note = Note.create!(title: "Fifth Wheel", body: "Nobody likes me. Everybody hates me. I'll eat dirt")
["sad","forever_alone","boohoo"].each do |word|
  note.tags << Tag.new(name: word)
end
