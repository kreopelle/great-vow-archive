# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dharma_talks/index', type: :view do
  before(:each) do
    assign(:dharma_talks, [
             create(:dharma_talk),
             create(:dharma_talk)
           ])
  end

  it 'renders a list of dharma_talks' do
    render
  end
end
