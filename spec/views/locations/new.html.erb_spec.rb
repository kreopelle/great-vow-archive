# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'locations/new', type: :view do
  before(:each) do
    assign(:location, build(:location))
  end

  it 'renders new location form' do
    render

    assert_select 'form[action=?][method=?]', locations_path, 'post' do
    end
  end
end
