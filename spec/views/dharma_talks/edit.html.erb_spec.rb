# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dharma_talks/edit', type: :view do
  before(:each) do
    @dharma_talk = assign(:dharma_talk, create(:dharma_talk))
  end

  it 'renders the edit dharma_talk form' do
    render

    assert_select 'form[action=?][method=?]', dharma_talk_path(@dharma_talk), 'post' do
    end
  end
end
