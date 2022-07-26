require 'rails_helper'

RSpec.describe "twitadvices/index", type: :view do
  before(:each) do
    assign(:twitadvices, [
      Twitadvice.create!(
        advice: "MyText",
        user: nil
      ),
      Twitadvice.create!(
        advice: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of twitadvices" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
