class Annonce < ApplicationRecord
  belongs_to :user
  enum temperature: %i[ambient positive negative]
  enum stock_type: %i[sqm cbm pallets]
  after_initialize :set_default_temperature
  after_initialize :set_default_stock_type

  validates :name, :address, :temperature, :price, :quantity, presence: true
  validates :description, length: { minimum: 10 }
  validate :at_least_one_duration

  private

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
end
