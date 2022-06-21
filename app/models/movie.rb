class Movie < ApplicationRecord

  acts_as_votable

  validates :title, presence: true
  validates :description, presence: true

  enum :categories, { 'comedy': 10,
                      'horrors': 20,
                      'vesterns': 30,
                      'military': 40,
                      'fantasy': 50
                    }
end
