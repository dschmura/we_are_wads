require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      biography: "MyText",
      title: "MyString",
      focus: "MyText",
      user: nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "textarea[name=?]", "profile[biography]"

      assert_select "input[name=?]", "profile[title]"

      assert_select "textarea[name=?]", "profile[focus]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
