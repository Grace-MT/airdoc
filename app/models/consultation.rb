class Consultation < ApplicationRecord
  validates :price_per_hour, numericality: { only_integer: true}
  validates :languages_spoken, presence: true
  validates :pretty_title, presence: true
  validates :location_city, presence: true
  validates :speciality, presence: true
  validates :years_of_experience, numericality: { only_integer: true}
  validates :availability, presence: true
  validates :duration, numericality: { only_integer: true}, presence: true


  has_many :appointments
  belongs_to :user
end
