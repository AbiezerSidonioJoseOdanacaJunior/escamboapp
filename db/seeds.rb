# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando Categorias..."
Categories = [	"Animais e acessórias",
				"Esportes" ,
				"Para a sua casa" ,
				"Eletrônica e celulare" ,
				"Músicas e hobies" ,
				"Bebês e crianças" ,
				"Moda e Beleza" ,
				"Veículos e Barcos" ,
				"Imóveis" '
				"Emprego e negócio' ]

Categories.each do |category|	
	Category.find_or_create_by(description: category)
end			

puts "Categorias cadastradas com sucesso..."