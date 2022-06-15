puts 'Destroying previous data...'

User.destroy_all
Annonce.destroy_all

puts 'Previous data destroyed!'

puts '------------'

puts 'Creating Admin'

User.create!(
  email: "admin@test.fr",
  password: 'secret',
  role: 2,
  company: 'Bourse de Stockage Team',
  siret: 80000000000000,
  vat: 'FR84320437100028',
  phone: '0669590094',
  interlocutor: 'Alexandre Prévot'
)


puts 'Admin created!'

puts 'Creating 10 annonces'



puts 'Annonces created!'
