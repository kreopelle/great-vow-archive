# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'speakers/index', type: :view do
  before(:each) do
    assign(:speakers, [
             create(:speaker),
             create(:speaker)
           ])
  end

  it 'renders a list of speakers' do
    render
  end
end
