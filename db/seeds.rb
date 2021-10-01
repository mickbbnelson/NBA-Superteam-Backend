# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team_1 = Team.create(name: "Team 1")
team_2 = Team.create(name: "Team 2")

Player.create(name: "Michael Jordan", position: "Shooting Guard", description: "He is the GOAT no question", team: team_1)
Player.create(name: "LeBron James", position: "Small Forward", description: "He's not the GOAT but he's in the top 2", team: team_2)