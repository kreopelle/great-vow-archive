# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :dharma_talks

  validates :name, presence: true, uniqueness: true
end
