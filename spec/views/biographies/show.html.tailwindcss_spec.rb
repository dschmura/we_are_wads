require 'rails_helper'

RSpec.describe "biographies/show", type: :view do
  before(:each) do
    @biography = assign(:biography, Biography.create!(
      title: "Title",
      work_focus: nil,
      joining_umich_story: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
