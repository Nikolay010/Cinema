# frozen string literal: true

require 'rails_helper'

describe MoviesController do
  describe '#index', type: :controller do

    subject(:res) { get :index}

    it 'should return success response' do
      expect(response).to have_http_status(:ok)
    end
  end
end