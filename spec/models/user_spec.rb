require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    it 'ensures e-mail presence'do
      user = User.new(password_digest: "").save
      expect(user).to eq(false)

    end
    
    it 'ensures password presence' do
      user = User.new(email: "testing@yahoo.com").save
      expect(user).to eq(false)
    end

    it 'should saved succesfully'do
      user = User.new(email: "testing@yahoo.com", password_digest: "").save
      expect(user).to eq(true)
    end
  end
end
