class Doctor < ApplicationRecord
  validates :name, presence: true, length: { in: 3..24 }
  validates :speciality, presence: true, length: { in: 3..15 }
  validates :likes, presence: true, numericality: { only_integer: true }
  validates :years_of_experience, presence: true, numericality: { only_integer: true }
  has_many :appointments
  has_many :users, through: :appointments
end
