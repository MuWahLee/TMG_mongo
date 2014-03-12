# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create([
  {email: "mlee2569@hotmail.com"},
  {email: "lee-mw@hotmail.com"},
  {email: "mlee2569@gmail.com"},
  ])
