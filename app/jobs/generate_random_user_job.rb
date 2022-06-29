class GenerateRandomUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    user = User.new
    user.email = Faker::Internet.email
    user.password = SecureRandom.hex(16)
    user.save!
    sleep 2
  end
end
