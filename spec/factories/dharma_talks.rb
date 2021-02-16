FactoryBot.define do
  factory :dharma_talk do
    title { FFaker::Book.title }
    date { Date.today }
    association :speaker
    association :location
  end
end
