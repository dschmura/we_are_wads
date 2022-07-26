require 'rails_helper'

RSpec.describe "twitadvices/edit", type: :view do
  before(:each) do
    @twitadvice = assign(:twitadvice, Twitadvice.create!(
      advice: "MyText",
      user: nil
    ))
  end

  it "renders the edit twitadvice form" do
    render

    assert_select "form[action=?][method=?]", twitadvice_path(@twitadvice), "post" do

      assert_select "textarea[name=?]", "twitadvice[advice]"

      assert_select "input[name=?]", "twitadvice[user_id]"
    end
  end
end
