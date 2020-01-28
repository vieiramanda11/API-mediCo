require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject { Doctor.new(name: 'Taylor Williams', years_of_experience: '15', likes: '50', speciality: 'General Doctor') }

  before { subject.save }

  it "should be valid" do
    expect(subject).to be_valid
  end

  it "name should not be too long" do
    subject.name = "a" * 26
    expect(subject).to_not be_valid
  end

  it "name should not be too short" do
    subject.name = "a"
    expect(subject).to_not be_valid
  end

  it "speciality should not be too long" do
    subject.speciality = "a" * 26
    expect(subject).to_not be_valid
  end

  it "speciality should not be too short" do
    subject.speciality = "a"
    expect(subject).to_not be_valid
  end

  it "likes should be a number" do
    subject.likes = 15
    expect(subject).to be_valid
  end

  it "likes should not be a string" do
    subject.likes = 'fifteen'
    expect(subject).to_not be_valid
  end

  it "years of experience should be a number" do
    subject.years_of_experience = 15
    expect(subject).to be_valid
  end

  it "years of experience should not be a string" do
    subject.years_of_experience = 'fifteen'
    expect(subject).to_not be_valid
  end
end
