require 'rails_helper'

RSpec.describe "dharma_talks/new", type: :view do
  before(:each) do
    assign(:dharma_talk, build(:dharma_talk))
  end

  it "renders new dharma_talk form" do
    render

    assert_select "form[action=?][method=?]", dharma_talks_path, "post" do
    end
  end
end
