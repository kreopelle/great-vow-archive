require 'rails_helper'

RSpec.describe Speaker, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:dharma_talks) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe 'instance methods' do
    describe '#name_role' do
      let(:speaker) { create(:speaker, role: role) }
      subject { speaker.name_role }

      context 'when a speaker has a role' do
        let(:role) { 'Sensei' }

        it { is_expected.to eq("#{speaker.name}, #{role}") }
      end

      context 'when a speaker does not have a role' do
        let(:role) { nil }
        
        it { is_expected.to eq(speaker.name) }
      end
    end
  end
end
