# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DharmaTalk, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:location) }
    it { is_expected.to belong_to(:speaker) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_uniqueness_of(:title) }
  end
end
