class Appointment < ApplicationRecord
#commenting from Grace
  validates :status, presence: true
  # patient
  validates :consultation_id, presence: true
  validates :user_id, presence: true

  belongs_to :consultation
  # doctor
  has_one :user, through: :consultation
end
