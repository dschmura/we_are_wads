require 'rails_helper'

RSpec.describe "advice_tweets/index", type: :view do
  before(:each) do
    assign(:advice_tweets, [
      AdviceTweet.create!(
        title: "Title",
        content: nil
      ),
      AdviceTweet.create!(
        title: "Title",
        content: nil
      )
    ])
  end

  it "renders a list of advice_tweets" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
