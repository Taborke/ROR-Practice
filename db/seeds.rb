# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blogger = Blogger.create! :name => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret', :name => 'a'
blogger1 = Blogger.create! :name => 'J DO', :email => 'j@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret', :name => 'b'
blogger2 = Blogger.create! :name => '0Doe', :email => '0@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret', :name => 'c'
blogger3 = Blogger.create! :name => 'Jd Doe', :email => 'hn@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret', :name => 'd'
