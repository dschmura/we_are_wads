require 'rails_helper'

RSpec.describe "quirks/edit", type: :view do
  before(:each) do
    @quirk = assign(:quirk, Quirk.create!(
      title: "MyString",
      content: nil,
      user: nil
    ))
  end

  it "renders the edit quirk form" do
    render

    assert_select "form[action=?][method=?]", quirk_path(@quirk), "post" do

      assert_select "input[name=?]", "quirk[title]"

      assert_select "input[name=?]", "quirk[content]"

      assert_select "input[name=?]", "quirk[user_id]"
    end
  end
end
