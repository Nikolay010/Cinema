# frozen string literal: true

FactoryBot.define do
  factory :movie do
    title { Faker::Movie.title }
    description { Faker::Movie.quote }
    categories { Movie.categories.values.sample }
  end
end