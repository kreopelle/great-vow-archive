require 'rails_helper'

RSpec.describe "dharma_talks/show", type: :view do
  before(:each) do
    @dharma_talk = assign(:dharma_talk, create(:dharma_talk))
  end

  it "renders attributes in <p>" do
    render
  end
end
