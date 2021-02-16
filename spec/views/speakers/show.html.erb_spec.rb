# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'speakers/show', type: :view do
  before(:each) do
    @speaker = assign(:speaker, create(:speaker))
  end

  it 'renders attributes in <p>' do
    render
  end
end
