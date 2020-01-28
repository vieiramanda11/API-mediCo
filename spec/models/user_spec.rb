require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(email: 'example@email.com', password: '123456', password_confirmation: '123456', name: 'User Example')}

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
end