require 'rails_helper'

RSpec.describe Note, type: :model do
  context 'validation test' do
    it 'ensures title presence'do
      note = Note.new(body: "testing title").save
      expect(note).to eq(false)

    end
    
    it 'ensures body presence' do
      note = Note.new(title: "testing body").save
      expect(note).to eq(false)
    end

    it 'should saved succesfully'do
      note = Note.new(title: "Testing save", body: "Everything should be saved").save
      expect(note).to eq(true)
    end
  end

  context 'scope test' do 
  end
end
