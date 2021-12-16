FactoryBot.define do
  factory :brand do
    title { Faker::Lorem.sentence(word_count: 3)}
    bytitle { Faker::Lorem.sentence(word_count: 5)}
    img { Faker::Lorem.sentence(word_count: 10) }
    description { Faker::Lorem.sentence(word_count: 10)}
  end
end