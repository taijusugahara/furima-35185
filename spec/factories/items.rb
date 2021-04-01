FactoryBot.define do
  factory :item do
    name { Faker::Lorem.word }
    explanation { Faker::Lorem.sentence }
    category_id               { '2' }
    item_status_id            { '2' }
    derivery_way_id { '2' }
    prefecture_id { '2' }
    derivery_day_id { '2' }
    price { '10000' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png')
    end
  end
end
