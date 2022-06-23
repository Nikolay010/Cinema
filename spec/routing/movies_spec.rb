# frozen string literal: true

require 'rails_helper'

describe 'movies routes' do
  it 'should rout movies to index' do
    expect(get '/').to route_to('movies#index')
  end

  it 'should rout movies to new' do
    expect(get '/movies/new').to route_to('movies#new')
  end

  it 'should rout movies to edit' do
    expect(patch '/movies/1').to route_to('movies#update', id: "1")
    end

  it 'should rout movies to delete' do
    expect(delete '/movies/1').to route_to('movies#destroy', id: "1")
  end
end
