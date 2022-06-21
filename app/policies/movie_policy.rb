# frozen string literal: true

class MoviePolicy < ApplicationPolicy
  attr_reader :user, :movie

  def create?
    User.admin?
  end

end
