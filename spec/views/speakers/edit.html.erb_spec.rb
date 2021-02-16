# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'speakers/edit', type: :view do
  before(:each) do
    @speaker = assign(:speaker, create(:speaker))
  end

  it 'renders the edit speaker form' do
    render

    assert_select 'form[action=?][method=?]', speaker_path(@speaker), 'post' do
    end
  end
end
