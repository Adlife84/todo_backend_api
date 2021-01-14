FactoryBot.define do
    factory :task do
      title { Faker::Movie::StarWars.character }
      done {false}
      todo_id {nil}
    end
  end