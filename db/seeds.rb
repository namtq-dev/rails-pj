# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(
    title: 'Football',
    detail: "Best Sport in the world",
    display: true
)

Category.create!(
    title: 'Baseball',
    detail: "Second Best Sport in the world",
    display: true
)

Category.create!(
    title: 'Golf',
    detail: "Sport for the rich",
    display: true
)

Category.create!(
    title: 'Swim',
    detail: "For a healthy body",
    display: true
)

5.times do |i|
    football = Product.new(
        name: 'Football',
        detail: 'King Sport',
        price: 10,
        outside: true,
        category: Category.find(1)
    )
    baseball = Product.new(
        name: 'Baseball',
        detail: 'High Quality Ball',
        price: 15,
        outside: true,
        category: Category.find(2)
    )
    golfball = Product.new(
        name: 'Mini Golf',
        detail: 'Good Ball',
        price: 20,
        inside: true,
        category: Category.find(3)
    )
    swimsuit = Product.new(
        name: 'Swimsuit',
        detail: 'Cool Outfit',
        price: 20,
        inside: true,
        outside: true,
        clothes: true,
        category: Category.find(4)
    )
    
    football.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_football__image.jpg")
    baseball.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_baseball_image.jpg")
    golfball.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_golfball_image.jpg")
    swimsuit.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_swimsuit_image.jpg")

    if i == 3
        football.functional == true
        baseball.functional == true
        golfball.functional == true
        swimsuit.functional == true
    end 

    football.save
    baseball.save
    golfball.save
    swimsuit.save
end