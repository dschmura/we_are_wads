require 'rails_helper'

RSpec.describe "advice_tweets/new", type: :view do
  before(:each) do
    assign(:advice_tweet, AdviceTweet.new(
      title: "MyString",
      content: nil
    ))
  end

  it "renders new advice_tweet form" do
    render

    assert_select "form[action=?][method=?]", advice_tweets_path, "post" do

      assert_select "input[name=?]", "advice_tweet[title]"

      assert_select "input[name=?]", "advice_tweet[content]"
    end
  end
end
