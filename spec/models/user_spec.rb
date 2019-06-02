require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context "invalid attributes" do
      it "is invalid without a first_name" do
        user = User.new(last_name: "Qudrat", email: "aqudrat638@gmail.com", social_security_number: "555-55-5555")
        expect(user).to be_invalid
      end
      it "is invalid without a last_name" do
        user = User.new(first_name: "Abdulla", email: "aqudrat638@gmail.com", social_security_number: "555-55-5555")
        expect(user).to be_invalid
      end
      it "is invalid without an email" do
        user = User.new(first_name: "Abdulla", last_name: "Qudrat", social_security_number: "555-55-5555")
        expect(user).to be_invalid
      end
      it "is invalid without a social_security_number" do
        user = User.new(first_name: "Abdulla", last_name: "Qudrat", email: "aqudrat638@gmail.com")
        expect(user).to be_invalid
      end
    end
    context "valid attributes" do
      it "is valid with all attributes" do 
        user = User.new(first_name: "Abdulla", last_name: "Qudrat", email: "aqudrat638@gmail.com", social_security_number: "555-55-5555")
        expect(user).to be_valid
      end
    end
  end
end