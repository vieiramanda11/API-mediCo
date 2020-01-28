class Api::V1::DoctorsController < ApplicationController

  DoctorReducer = Rack::Reducer.new(
    Doctor.all,
    ->(name:) { where('lower(name) like ?', "%#{name.downcase}%") }
  )
  def index
    @doctors = DoctorReducer.apply(params)
    render json: @doctors
  end
end
