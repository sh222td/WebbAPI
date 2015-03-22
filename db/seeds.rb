# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "Sandra", email: "sandra@mail.com", password: "lösenord", password_confirmation: "lösenord", api_key: SecureRandom.hex)

Creator.create!(username: "Doris", email: "mail@mail.com", password: "lösenord", password_confirmation: "lösenord", api_key: SecureRandom.hex)
Creator.create!(username: "Danne", email: "danne@mail.com", password: "lösenord", password_confirmation: "lösenord", api_key: SecureRandom.hex)

Tag.create!(name: "Jakt/Fiske")
Tag.create!(name: "Grillning")

Position.create!(longitude: 45.6544, latitude: 55.2345)
Position.create!(longitude: 33.6874, latitude: 58.4511)

Event.create!(creator_id: 2, position_id:1, tag_id: 1, description: "Fiskeresa till Helsingborg")
Event.create!(creator_id: 1, position_id:2, tag_id: 1, description: "Vildsvinsjakt kl 17.00, ta på dig en färgstark mössa!")
Event.create!(creator_id: 1, position_id:2, tag_id: 2, description: "Grillning på Sveaplan, vi bjuder på korv!")

