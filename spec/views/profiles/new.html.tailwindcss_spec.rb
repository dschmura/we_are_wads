require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      biography: "MyText",
      title: "MyString",
      focus: "MyText",
      user: nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "textarea[name=?]", "profile[biography]"

      assert_select "input[name=?]", "profile[title]"

      assert_select "textarea[name=?]", "profile[focus]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
