require 'rails_helper'

RSpec.describe "biographies/index", type: :view do
  before(:each) do
    assign(:biographies, [
      Biography.create!(
        title: "Title",
        work_focus: nil,
        joining_umich_story: nil,
        user: nil
      ),
      Biography.create!(
        title: "Title",
        work_focus: nil,
        joining_umich_story: nil,
        user: nil
      )
    ])
  end

  it "renders a list of biographies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
