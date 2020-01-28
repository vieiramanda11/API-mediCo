class Api::V1::DoctorsController < ApplicationController

  DoctorReducer = Rack::Reducer.new(
    Doctor.all,
    ->(name:) { where('lower(name) like ?', "%#{name.downcase}%") },
    ->(speciality:) { where('lower(speciality) like ?', "%#{speciality.downcase}%") },
    ->(likes:) { where(likes: likes) },
    ->(years_of_experience:) { where(years_of_experience: years_of_experience) }
  )
  def index
    @doctors = DoctorReducer.apply(params)
    render json: @doctors
  end
end
