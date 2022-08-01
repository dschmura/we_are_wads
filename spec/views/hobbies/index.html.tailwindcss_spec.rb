require 'rails_helper'

RSpec.describe "hobbies/index", type: :view do
  before(:each) do
    assign(:hobbies, [
      Hobby.create!(
        title: "Title",
        content: nil,
        user: nil
      ),
      Hobby.create!(
        title: "Title",
        content: nil,
        user: nil
      )
    ])
  end

  it "renders a list of hobbies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
