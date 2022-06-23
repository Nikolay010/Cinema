# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @pagy, @movies = pagy(Movie.all)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path, notice: "Movie was successfully created"
    else
      render :new
    end
  end

  def show
    @movie.title && @movie.description
  end

  def edit; end

  def update
    if @movie.update(movie_params)
      redirect_to navigation_location, notice: 'Movie was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    redirect_to navigation_location, notice: 'Movie was successfully deleted.'
  end

  def vote_up
    @movie.votes.up
  end

  def vote_down
    @movie.votes.down
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end


