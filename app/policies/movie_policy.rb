# frozen string literal: true

class MoviePolicy < ApplicationPolicy
  attr_reader :user, :movie

  def initialize(current_user, movie)
    @current_user = current_user
    @movie = movie
  end

  def create?
    @current_user.admin?
  end
end
