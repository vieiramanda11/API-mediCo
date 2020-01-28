require 'rails_helper'

RSpec.describe Appointment, type: :model do
  before(:all) do
    @doctor = Doctor.create!(name: 'Taylor Williams', years_of_experience: '15', likes: '50', speciality: 'General Doctor')
    @user = User.create!(email: 'example@email.com', password: '123456', password_confirmation: '123456', name: 'User')
  end

  time = Time.now.strftime("%I:%M")

  subject { Appointment.new(user_id: @user.id, doctor_id: @doctor.id, date: '2020-02-20', time: time)}

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'should have user_id' do
    expect(subject.user_id).to eql(@user.id)
  end

  it 'should have doctor_id' do
    expect(subject.doctor_id).to eql(@doctor.id)
  end
end
