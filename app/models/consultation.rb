class Consultation < ApplicationRecord
  validates :price_per_hour, numericality: { only_integer: true}
  validates :languages_spoken
  validates :pretty_title
  validates :location_city
  validates :speciality
  validates :years_of_experience, numericality: { only_integer: true}
  validates :availability
  validates :duration, numericality: { only_integer: true}


  has_many :appointments
  belongs_to :user
end
