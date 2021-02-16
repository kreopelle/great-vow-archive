# frozen_string_literal: true

FactoryBot.define do
  factory :speaker do
    name { FFaker::Name.name }
  end
end
