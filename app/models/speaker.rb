# frozen_string_literal: true

class Speaker < ApplicationRecord
  has_many :dharma_talks

  validates :name, presence: true, uniqueness: true

  def name_role
    role.present? ? "#{name}, #{role}" : name
  end
end
