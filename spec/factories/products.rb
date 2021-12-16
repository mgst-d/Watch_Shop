FactoryBot.define do
  
  factory :product do

    brand_id { rand 1..5 }
    title { Faker::Lorem.word }
    bytitle { title }
    img { 'p-1.png' }
    content { Faker::Lorem.sentence(word_count: 10) }
    keywords { title }
    description { Faker::Lorem.sentence(word_count: 10) }
    price { rand(10..50)}
    old_price { rand(10..50)}
    status { 1 }
    hit { 1 }
  end
end