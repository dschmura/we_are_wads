require 'rails_helper'

RSpec.describe "twitadvices/new", type: :view do
  before(:each) do
    assign(:twitadvice, Twitadvice.new(
      advice: "MyText",
      user: nil
    ))
  end

  it "renders new twitadvice form" do
    render

    assert_select "form[action=?][method=?]", twitadvices_path, "post" do

      assert_select "textarea[name=?]", "twitadvice[advice]"

      assert_select "input[name=?]", "twitadvice[user_id]"
    end
  end
end
