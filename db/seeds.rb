# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create!(name: "Brosse vaisselle", description: "Une brosse zéro déchet", original_price: 7.97497, photo: 'https://www.boutiquezerodechet.com/847-home_default/brosse-vaisselle.jpg')
Item.create!(name: "Coque iPhone", description: "Coque de téléphone issue de matières nobles, renouvelables. Zéro déchet.", original_price: 15.4589223, photo: 'https://www.bloomers.eco/wp-content/uploads/2017/01/Screen-Shot-2018-11-16-at-2.33.27-PM.png')
