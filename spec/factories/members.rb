FactoryBot.define do
    factory :member do
      first_name { Faker::Lorem.word }
      last_name  { Faker::Lorem.word }
    end
  end