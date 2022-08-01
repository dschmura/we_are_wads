require 'rails_helper'

RSpec.describe "advice_tweets/edit", type: :view do
  before(:each) do
    @advice_tweet = assign(:advice_tweet, AdviceTweet.create!(
      title: "MyString",
      content: nil
    ))
  end

  it "renders the edit advice_tweet form" do
    render

    assert_select "form[action=?][method=?]", advice_tweet_path(@advice_tweet), "post" do

      assert_select "input[name=?]", "advice_tweet[title]"

      assert_select "input[name=?]", "advice_tweet[content]"
    end
  end
end
