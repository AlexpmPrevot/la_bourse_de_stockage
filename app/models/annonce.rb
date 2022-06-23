class Annonce < ApplicationRecord
  belongs_to :user
  enum temperature: %i[ambient positive negative]
  enum stock_type: %i[sqm cbm pallets]
  after_initialize :set_default_temperature
  after_initialize :set_default_stock_type
  geocoded_by :full_address
  after_create :set_latlong

  validates :name, :street_number, :street_name, :zipcode, :city, :temperature, :price, :quantity, presence: true
  validates :description, length: { minimum: 10 }
  validate :at_least_one_duration

  private

  def full_address
    ["#{street_number} #{street_name}", city, country].compact.join(', ')
  end

  def at_least_one_duration
    if (long_term || transit) == false
      errors[:base] << ("Veuillez choisir au moins une durée")
    end
  end

  def set_default_temperature
    self.temperature ||= :ambient
  end

  def set_default_stock_type
    self.stock_type ||= :sqm
  end

  def full_address
    ["#{street_number} #{street_name}", city, country].compact.join(', ')
  end

  def set_latlong
    @annonces = Annonce.all
    @annonces.each do |annonce|
      coords = annonce.geocode
      if coords
      else
        annonce.latitude = rand(44,6543..45,8764)
        annonce.longitude = rand(0,5432..0,8764)
      end
      annonce.save
    end
  end
end
