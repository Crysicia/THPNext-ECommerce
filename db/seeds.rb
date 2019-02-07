# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

Item.create!(name: "Brosse vaisselle", description: "Une brosse zéro déchet", original_price: 7.97, photo: 'https://www.boutiquezerodechet.com/847-home_default/brosse-vaisselle.jpg')
Item.create!(name: "Brosse à dents bambou", description: "Poils souples infusés au charbon végétal, Longueur 18.5 cm, Manche teinté à la main au chalumeau, Vegan, Biodégradable dans le compost ", original_price: 7.50, photo: 'https://www.boutiquezerodechet.com/571-thickbox_default/brosse-a-dents-bambou.jpg')
Item.create!(name: "Dentifrice solide à la menthe - Avec boite", description: "Simple d'utilisation : Frottez votre brosse à dents humide sur le galet et brossez vous les dents comme à votre habitude.", original_price: 12.00, photo: 'https://www.boutiquezerodechet.com/545-thickbox_default/dentifrice-naturel-solide.jpg')
Item.create!(name: "Dentifrice solide à la menthe - recharge", description: "Simple d'utilisation : Frottez votre brosse à dents humide sur le galet et brossez vous les dents comme à votre habitude.", original_price: 9.00, photo: 'https://www.boutiquezerodechet.com/546-thickbox_default/dentifrice-naturel-solide-pachamamai.jpg')
Item.create!(name: "Savon de Marseille - Olive", description: "Le Savon de Marseille est un produit naturel, sain et efficace pour toute la famille et l'entretien de la maison et du linge", original_price: 5.00, photo: 'https://www.boutiquezerodechet.com/405-thickbox_default/savon-de-marseille-olive.jpg')
Item.create!(name: "Brosse de bain", description: "Brosse de bain 100% naturelle en bois et crin, conçue selon un savoir-faire ancestral.", original_price: 25.00, photo: 'https://www.boutiquezerodechet.com/110-thickbox_default/brosse-de-bain.jpg')
Item.create!(name: "Gourde en inox - 800ml", description: "Gourde inox brossé et bambou pour vos déplacements et sorties zero dechet : travail, vacances, sport, pique-nique...", original_price: 40.00, photo: 'https://www.boutiquezerodechet.com/361-thickbox_default/gourde-inox-sans-bpa.jpg')
Item.create!(name: "Lunch box en inox", description: "L'alternative zéro déchet aux boites en plastique. Pratique, sa forme compacte permet de la transporter facilement. Convient à tous les membres de la famille. ", original_price: 25.00, photo: 'https://www.boutiquezerodechet.com/113-thickbox_default/lunch-box-inox.jpg')
Item.create!(name: "Couverts en bambou", description: "Lot de 3 couverts en bambou comme alternative zéro déchet aux couverts en plastique. Sains, éthiques et durables, ces couverts en bambou réutilisables peuvent s'emporter partout.", original_price: 12.00, photo: 'https://www.boutiquezerodechet.com/758-thickbox_default/couverts-bambou.jpg')
