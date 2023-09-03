# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Data Base'
State.destroy_all
City.destroy_all

puts 'Creating states'

# States
state_paraná = State.create(name: 'Paraná')
state_santa_catarina = State.create(name: 'Santa Catarina')
state_rio_grande = State.create(name: 'Rio Grande do Sul')

puts 'Creating cities'

# Cities
City.create(name: 'Curitiba', state: state_paraná)
City.create(name: 'Londrina', state: state_paraná)
City.create(name: 'Maringá', state: state_paraná)

City.create(name: 'Joinville', state: state_santa_catarina)
City.create(name: 'Florianópolis', state: state_santa_catarina)
City.create(name: 'Blumenau', state: state_santa_catarina)

City.create(name: 'Porto Alegre', state: state_rio_grande)
City.create(name: 'Caxias do Sul', state: state_rio_grande)
City.create(name: 'Gramado', state: state_rio_grande)

puts 'Finished'
