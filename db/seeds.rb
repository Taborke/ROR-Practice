# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bigboss = User.create({name: 'BossHoss', role: 'admin', email: 'boss@hoss.com', password: 'bigbosshoss', password_confirmation: 'bigbosshoss'})
authR = User.create({name: 'bloggerhead', role: 'author', email: 'a@a.com', password: 'ilovetoblog', password_confirmation: 'ilovetoblog'})
modr = User.create({name: 'moddy', role: 'moderator', email: 'modr@modr.com', password: 'modrmodr', password_confirmation: 'modrmodr'})

ent1 = Entry.create({feeling: 'good', blurb: 'Hey does this thing work?', user_id: '1', tag_list: ["new","working"]})
ent2 = Entry.create({feeling: 'worried', blurb: 'I hope the tags are working', user_id: '2', tag_list: ["Ohnoes", "workn", "IamANoob"]})
ent3 = Entry.create({feeling: 'golden', blurb: 'this thing is going to work. I want this to be my entry and no one elses!', user_id: '2', tag_list: ["one of these days", "oh yeah"]})