# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@log = Log.new
@log.talk = "hello,akari"
@log.username = "tera"
@log.time = "16:00"
@log.save

@log = Log.new
@log.talk = "I am chatbot,akari"
@log.username = "akari"
@log.time = "20:00"
@log.save