class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { in: 3..24 }
end
