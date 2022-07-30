require 'rails_helper'

RSpec.describe "quirks/show", type: :view do
  before(:each) do
    @quirk = assign(:quirk, Quirk.create!(
      title: "Title",
      content: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
