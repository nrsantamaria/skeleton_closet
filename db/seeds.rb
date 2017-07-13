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

Skeleton.destroy_all

10.times do |index|
  Skeleton.create!(name: Faker::Book.title,
                  body: Faker::MostInterestingManInTheWorld.quote,
                  picture: File.new('app/assets/images/missing.png'),
                  closet_id: Faker::Number.between(1, 3))
end
