class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :user_id, presence: true
  validates :doctor_id, presence: true
  validates :date, presence: true
  # validates :time, presence: true
end
