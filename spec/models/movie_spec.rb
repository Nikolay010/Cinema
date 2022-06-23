# frozen string literal: true

require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe '#validate' do
    it 'should validate present attribute' do
      movie = build :movie
      expect(movie).to be_valid
    end

    it 'create user with invalid params' do
      movie = build :movie, title: nil, description: nil
      expect(movie).not_to be_valid
      expect(movie.errors.messages[:title]).to include("can't be blank")
      expect(movie.errors.messages[:description]).to include("can't be blank")
    end
  end
end