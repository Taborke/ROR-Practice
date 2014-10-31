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

ent1 = Entry.create({feeling: 'good', blurb: 'Hey does this thing work?', user_id: '1'})
ent1.tag_list.add(["new","working"])
