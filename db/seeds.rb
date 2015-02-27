# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "tim2", email: "tim2@timrenken.io", password: "Remember1", password_confirmation: "Remember1")
User.create(username: "tim3", email: "tim3@timrenken.io", password: "Remember1", password_confirmation: "Remember1")
User.create(username: "tim4", email: "tim4@timrenken.io", password: "Remember1", password_confirmation: "Remember1")
User.create(username: "tim5", email: "tim5@timrenken.io", password: "Remember1", password_confirmation: "Remember1")
p "Users created"