require 'rails_helper'

RSpec.describe "quirks/new", type: :view do
  before(:each) do
    assign(:quirk, Quirk.new(
      title: "MyString",
      description: "MyText",
      user: nil
    ))
  end

  it "renders new quirk form" do
    render

    assert_select "form[action=?][method=?]", quirks_path, "post" do

      assert_select "input[name=?]", "quirk[title]"

      assert_select "textarea[name=?]", "quirk[description]"

      assert_select "input[name=?]", "quirk[user_id]"
    end
  end
end
