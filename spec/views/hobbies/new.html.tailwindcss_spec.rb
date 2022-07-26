require 'rails_helper'

RSpec.describe "hobbies/new", type: :view do
  before(:each) do
    assign(:hobby, Hobby.new(
      name: "MyString",
      user: nil
    ))
  end

  it "renders new hobby form" do
    render

    assert_select "form[action=?][method=?]", hobbies_path, "post" do

      assert_select "input[name=?]", "hobby[name]"

      assert_select "input[name=?]", "hobby[user_id]"
    end
  end
end
