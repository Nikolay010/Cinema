class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
  end

  def show;
    @movie = Movie.all
  end

  def update
  end

  def destroy
  end
end
