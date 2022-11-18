# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Frontend.find_or_create_by(name: "HTML")
Frontend.find_or_create_by(name: "BootStrap")
Frontend.find_or_create_by(name: "Css3")
Frontend.find_or_create_by(name: "Tailwind")
Frontend.find_or_create_by(name: "JQuery")
Frontend.find_or_create_by(name: "React js")
Frontend.find_or_create_by(name: "Next js")
Frontend.find_or_create_by(name: "Vue js")

Backend.find_or_create_by(name: "Ruby")
Backend.find_or_create_by(name: "Python")
Backend.find_or_create_by(name: "C")
Backend.find_or_create_by(name: "Java")
Backend.find_or_create_by(name: "PHP")


UserSkill.create(user: User.first, skill: Skill.find(1), rating: 10)
UserSkill.create(user: User.first, skill: Skill.find(2), rating: 4)
UserSkill.create(user: User.first, skill: Skill.find(3), rating: 5)
UserSkill.create(user: User.first, skill: Skill.find(4), rating: 7)
UserSkill.create(user: User.first, skill: Skill.find(5), rating: 8)


UserSkill.create(user: User.last, skill: Skill.find(1), rating: 8)
UserSkill.create(user: User.last, skill: Skill.find(2), rating: 8)
UserSkill.create(user: User.last, skill: Skill.find(8), rating: 8)
UserSkill.create(user: User.last, skill: Skill.find(7), rating: 8)
