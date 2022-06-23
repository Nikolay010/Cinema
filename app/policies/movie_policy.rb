# frozen string literal: true

class MoviePolicy < ApplicationPolicy
  attr_reader :user, :movie

  def initialize(user, movie)
    @user = user
    @movie = movie
  end

  def create?
    User.admin?
  end
end
