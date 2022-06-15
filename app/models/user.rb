class User < ApplicationRecord
  has_many :annonces, dependent: :destroy
  enum role: %i[user client admin]
  after_initialize :set_default_role, if: [:new_record?]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :siret, numericality: true, length: { is: 14 }
  validates :company, :phone, :interlocutor, presence: true
  validates :vat, presence: true, length: { minimum: 13 }

  private

  def set_default_role
    self.role ||= :user
  end
end
