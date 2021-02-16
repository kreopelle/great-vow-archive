# frozen_string_literal: true

class DharmaTalk < ApplicationRecord
  belongs_to :speaker
  belongs_to :location

  validates :title, presence: true, uniqueness: true
end
