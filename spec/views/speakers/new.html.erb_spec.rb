# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'speakers/new', type: :view do
  before(:each) do
    assign(:speaker, build(:speaker))
  end

  it 'renders new speaker form' do
    render

    assert_select 'form[action=?][method=?]', speakers_path, 'post' do
    end
  end
end
