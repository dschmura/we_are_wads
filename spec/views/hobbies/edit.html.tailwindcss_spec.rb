require 'rails_helper'

RSpec.describe "hobbies/edit", type: :view do
  before(:each) do
    @hobby = assign(:hobby, Hobby.create!(
      name: "MyString",
      user: nil
    ))
  end

  it "renders the edit hobby form" do
    render

    assert_select "form[action=?][method=?]", hobby_path(@hobby), "post" do

      assert_select "input[name=?]", "hobby[name]"

      assert_select "input[name=?]", "hobby[user_id]"
    end
  end
end
