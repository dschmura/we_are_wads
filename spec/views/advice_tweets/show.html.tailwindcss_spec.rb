require 'rails_helper'

RSpec.describe "advice_tweets/show", type: :view do
  before(:each) do
    @advice_tweet = assign(:advice_tweet, AdviceTweet.create!(
      title: "Title",
      content: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
