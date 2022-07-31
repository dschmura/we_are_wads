require 'rails_helper'

RSpec.describe "biographies/new", type: :view do
  before(:each) do
    assign(:biography, Biography.new(
      title: "MyString",
      work_focus: nil,
      joining_umich_story: nil,
      user: nil
    ))
  end

  it "renders new biography form" do
    render

    assert_select "form[action=?][method=?]", biographies_path, "post" do

      assert_select "input[name=?]", "biography[title]"

      assert_select "input[name=?]", "biography[work_focus]"

      assert_select "input[name=?]", "biography[joining_umich_story]"

      assert_select "input[name=?]", "biography[user_id]"
    end
  end
end
