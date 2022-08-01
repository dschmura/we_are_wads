require 'rails_helper'

RSpec.describe "hobbies/show", type: :view do
  before(:each) do
    @hobby = assign(:hobby, Hobby.create!(
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
