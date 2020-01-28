class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { in: 3..24 }

  has_many :appointments
  has_many :doctors, through: :appointments
end
