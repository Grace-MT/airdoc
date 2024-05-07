class Appointment < ApplicationRecord
  validates :status
  # patient
  validates :user_id, presence: true
  validates :consultation_id, presence: true

  belongs_to :consultation
  # doctor
  has_one :user, through: :consultation
end
