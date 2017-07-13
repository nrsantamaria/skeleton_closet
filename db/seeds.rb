# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Closet.destroy_all

closet1 = Closet.create({name: 'Dread'})
closet2 = Closet.create({name: 'Misery'})
closet3 = Closet.create({name: 'Posterity'})
