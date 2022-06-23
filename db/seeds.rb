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

street = ['Rue Berquin',
          'Rue Berrouet',
          'Rue Berruer',
          'Rue Bert',
          'Rue Bertal',
          'Rue Bertheau',
          'Rue Berthelot',
          'Rue Berthollet',
          'Rue Berthome',
          'Rue Bertin',
          'Rue Bertrand Andrieu',
          'Rue Bertrand Hauret',
          'Rue Bertrand de Goth',
          'Rue Bertrand de Noailhan',
          'Rue Bertrand de Segur',
          'Rue Beyerman',
          'Rue Beyssac',
          'Rue Bienvenue',
          'Rue Bigot',
          'Rue Billaudel',
          'Rue Binaud',
          'Rue Bizeaudun',
          'Rue Blaise Pascal',
          'Rue Blanc Dutrouilh',
          'Rue Blanchard',
          'Rue Blanchard-Latour',
          'Rue Blanche',
          'Rue Blanqui',
          'Rue Blumerel',
          'Rue Bobillot',
          'Rue Boileau',
          'Rue Boistaud',
          'Rue Bolivar',
          'Rue Bongrand',
          'Rue Bonlieu',
          'Rue Bonnaffé',
          'Rue Bonnaous',
          'Rue Bonnefin',
          'Rue Bontemps',
          'Rue Bordes FortageNote',
          'Rue Borie',
          'Rue Boris Vian',
          'Rue Bosquet',
          'Rue Bossuet',
          'Rue Bouche',
          'Rue Bouchon',
          'Rue Boudet',
          'Rue Bouffard',
          'Rue Bougainville',
          'Rue Bouguereau',
          'Rue Boulan',
          'Rue Boulanger',
          'Rue Boulineau']

10.times do
  a = Annonce.new(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 4),
    street_number: rand(1..30),
    street_name: street.sample,
    city: 'Bordeaux',
    zipcode: '33000',
    country: 'France',
    temperature: ['ambient', 'positive', 'negative'].sample,
    price: rand(5..80),
    quantity: rand(1..200),
    transit: true,
    long_term: [true, false].sample,
    stock_type: ['sqm', 'cbm', 'pallets'].sample,
    available: true
  )
  a.user = User.last
  a.save!
end

puts 'Annonces created!'
